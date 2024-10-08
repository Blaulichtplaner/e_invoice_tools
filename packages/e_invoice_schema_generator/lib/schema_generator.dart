// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:e_invoice_schema_generator/utils.dart';
import 'package:xml/xml.dart';

class OutputType {
  final String? prefix;
  final String name;
  final String type;
  final bool isInternal;
  // TODO Value formatter (decimal, date)

  OutputType(
      {required this.prefix,
      required this.name,
      required this.type,
      required this.isInternal});
}

class Attribute {
  final String name;
  final String type;
  final bool required;

  Attribute(this.name, this.type, this.required);

  @override
  String toString() =>
      'Attribute(name: $name, type: $type, required: $required)';
}

class SimpleContent {
  final String baseType;
  final List<Attribute> attributes;

  SimpleContent(this.baseType, this.attributes);

  @override
  String toString() =>
      'SimpleContent(baseType: $baseType, attributes: $attributes)';
}

class SchemaType {}

class Element {
  final String prefix;
  final String name;
  final String type;

  final int minOccurs;
  final int maxOccurs;

  Element(
      {required this.prefix,
      required this.name,
      required this.type,
      this.minOccurs = 1,
      this.maxOccurs = 1});

  bool get isRequired => minOccurs == 1 && maxOccurs == 1;
  bool get isOptional => minOccurs == 0;
  bool get isList => maxOccurs == -1 || maxOccurs > 1;

  @override
  String toString() {
    return 'SequenceElement(name: $name, type: $type,  minOccurs: $minOccurs, maxOccurs: $maxOccurs)';
  }
}

class ComplexType extends SchemaType {
  final SimpleContent? simpleContent;
  final List<Element> choices;
  final List<Element> sequence;

  ComplexType(
      {required this.simpleContent,
      required this.choices,
      required this.sequence});

  @override
  String toString() =>
      'ComplexType(simpleContent: $simpleContent, choices: $choices, sequence: $sequence)';
}

class SimpleType extends SchemaType {
  final String baseType;
  final List<String> enumeration;

  SimpleType(this.baseType, this.enumeration);

  @override
  String toString() =>
      'SimpleType(baseType: $baseType, enumeration: $enumeration)';
}

class SchemaGenerator {
  final Map<String, String> namespaces = {};
  final Map<String, ComplexType> complexTypes = {};
  final Map<String, SimpleType> simpleTypes = {};

  void processSchema(Directory parentPath, XmlElement root) {
    for (XmlAttribute attr in root.attributes) {
      if (attr.name.prefix == "xmlns") {
        namespaces[attr.name.local] = attr.value;
      }
    }

    String targetNamespace = root.getAttribute("targetNamespace")!;
    String prefix = namespaces.entries
        .firstWhere((element) => element.value == targetNamespace)
        .key;

    for (XmlElement element in root.childElements) {
      if (element.name.local == "import") {
        print("Importing ${element.getAttribute("schemaLocation")}");
        //String namespace = element.getAttribute("namespace")!;
        final importedFile = File(parentPath.path +
            p.separator +
            element.getAttribute("schemaLocation")!);
        final importedDocument =
            XmlDocument.parse(importedFile.readAsStringSync());
        processSchema(parentPath, importedDocument.rootElement);
      } else if (element.name.local == "complexType") {
        ComplexType complexType = processComplexType(prefix, element);
        complexTypes["$prefix:${element.getAttribute("name")}"] = complexType;
      } else if (element.name.local == "simpleType") {
        SimpleType simpleType = processSimpleType(element);
        simpleTypes["$prefix:${element.getAttribute("name")}"] = simpleType;
      } else {
        print("****** Ignoring ${element.name.local}");
      }

      print("${element.name.local} $prefix:${element.getAttribute("name")}");
    }
  }

  SimpleContent processSimpleContent(XmlElement element) {
    String baseType = "";
    List<Attribute> attributes = [];

    for (XmlElement child in element.childElements) {
      if (child.name.local == "extension") {
        baseType = child.getAttribute("base")!;
        for (XmlElement subChild in child.childElements) {
          if (subChild.name.local == "attribute") {
            String name = subChild.getAttribute("name")!;
            String type = subChild.getAttribute("type")!;
            bool required = subChild.getAttribute("use") == "required";
            attributes.add(Attribute(name, type, required));
          }
        }
      }
    }

    return SimpleContent(baseType, attributes);
  }

  List<Element> processElements(String prefix, XmlElement child) {
    List<Element> result = [];
    for (XmlElement subChild in child.childElements) {
      if (subChild.name.local == "element") {
        String name = subChild.getAttribute("name")!;
        String minOccurs = subChild.getAttribute("minOccurs") ?? "1";
        String maxOccurs = subChild.getAttribute("maxOccurs") ?? "1";

        if (subChild.childElements.isNotEmpty) {
          for (XmlElement elementSubChild in subChild.childElements) {
            if (elementSubChild.name.local == "complexType") {
              ComplexType complexType =
                  processComplexType(prefix, elementSubChild);
              String type = "$prefix:$name";
              complexTypes[type] = complexType;

              result.add(
                Element(
                    prefix: prefix,
                    name: name,
                    type: type,
                    minOccurs: int.tryParse(minOccurs) ?? -1, // unbounded
                    maxOccurs: int.tryParse(maxOccurs) ?? -1), // unbounded
              );
            } else {
              print(
                  "****** Ignoring element child: ${elementSubChild.name.local}");
            }
          }
        } else {
          String type = subChild.getAttribute("type")!;
          result.add(
            Element(
                prefix: prefix,
                name: name,
                type: type,
                minOccurs: int.tryParse(minOccurs) ?? -1, // unbounded
                maxOccurs: int.tryParse(maxOccurs) ?? -1), // unbounded
          );
        }
      } else {
        print("****** Ignoring choice child: ${subChild.name.local}");
      }
    }
    return result;
  }

  ComplexType processComplexType(String prefix, XmlElement element) {
    SimpleContent? simpleContent;
    List<Element> choices = [];
    List<Element> sequence = [];
    for (XmlElement child in element.childElements) {
      if (child.name.local == "simpleContent") {
        simpleContent = processSimpleContent(child);
      } else if (child.name.local == "choice") {
        choices = processElements(prefix, child);
      } else if (child.name.local == "sequence") {
        sequence = processElements(prefix, child);
      } else {
        print("****** Ignoring complex type child: ${child.name.local}");
      }
    }

    return ComplexType(
        simpleContent: simpleContent, choices: choices, sequence: sequence);
  }

  processSimpleType(XmlElement element) {
    String baseType = "";
    List<String> enumeration = [];

    for (XmlElement child in element.childElements) {
      if (child.name.local == "restriction") {
        baseType = child.getAttribute("base")!;
        for (XmlElement subChild in child.childElements) {
          if (subChild.name.local == "enumeration") {
            enumeration.add(subChild.getAttribute("value")!);
          }
        }
      } else {
        print("****** Ignoring simple type child: ${child.name.local}");
      }
    }

    return SimpleType(baseType, enumeration);
  }

  OutputType getType(String xmlType) {
    List<String> prefixName = xmlType.split(":");
    String? prefix;
    String name;
    String type;
    bool isInternal = true;
    if (prefixName.length == 1) {
      prefix = null;
      name = prefixName[0];
    } else {
      prefix = prefixName[0];
      name = prefixName[1];
    }

    switch (xmlType) {
      case "xs:string":
      case "xs:token":
        type = "String";
        break;
      case "xs:decimal":
        type = "double";
        break;
      case "xs:integer":
        type = "int";
        break;
      case "xs:boolean":
        type = "bool";
        break;
      case "xs:date":
        type = "DateTime";
        break;
      case "xs:dateTime":
        type = "DateTime";
        break;
      default:
        type = prefixName[1];
        isInternal = false;
        break;
    }

    return OutputType(
        prefix: prefix, name: name, type: type, isInternal: isInternal);
  }

  generateCode(String name, ComplexType complexType) {
    List<String> prefixName = name.split(":");

    Class node = Class((cb) {
      cb.name = prefixName[1];
      cb.extend = refer("XmlNode");
      if (complexType.simpleContent != null) {
        cb.constructors.add(Constructor((cb) {
          cb.optionalParameters.add(Parameter((pb) => pb
            ..name = "value"
            ..named = true
            ..required = true
            ..toThis = true));
          for (Attribute attribute in complexType.simpleContent!.attributes) {
            cb.optionalParameters.add(Parameter((pb) => pb
              ..name = attribute.name
              ..named = true
              ..required = attribute.required
              ..toThis = true));
          }
        }));
        cb.fields.add(Field((fb) => fb
          ..name = "value"
          ..type = refer("String")
          ..modifier = FieldModifier.final$));
        cb.fields.addAll(
          complexType.simpleContent!.attributes.map(
            (e) => Field(
              (fb) {
                OutputType fieldType = getType(e.type);
                fb
                  ..name = e.name
                  ..type =
                      refer(e.required ? fieldType.type : "${fieldType.type}?")
                  ..modifier = FieldModifier.final$;
              },
            ),
          ),
        );
        StringBuffer attrs = StringBuffer();
        for (Attribute attr in complexType.simpleContent!.attributes) {
          if (attr.required) {
            attrs
                .write("xmlBuilder.attribute(\"${attr.name}\", ${attr.name});");
          } else {
            attrs.write("if (${attr.name} != null) {"
                "xmlBuilder.attribute(\"${attr.name}\", ${attr.name});}");
          }
        }

        cb.methods.add(Method((mb) => mb
          ..name = "toXml"
          ..annotations.add(refer("override"))
          ..requiredParameters.add(Parameter((pb) => pb
            ..name = "xmlBuilder"
            ..type = refer("XmlBuilder")))
          ..body = Code("${attrs.toString()} xmlBuilder.text(value);")));
      } else if (complexType.sequence.isNotEmpty) {
        cb.constructors.add(Constructor((cb) {
          for (Element element in complexType.sequence) {
            if (element.isList) {
              cb.optionalParameters.add(Parameter((pb) => pb
                ..name = element.name.toLowerCaseFirst()
                ..named = true
                ..required = element.isOptional ? false : true
                ..toThis = true));
            } else {
              cb.optionalParameters.add(Parameter((pb) => pb
                ..name = element.name.toLowerCaseFirst()
                ..named = true
                ..required = element.isRequired
                ..toThis = true));
            }
          }
        }));

        StringBuffer code = StringBuffer();
        for (Element element in complexType.sequence) {
          OutputType fieldType = getType(element.type);
          String namespace = namespaces[element.prefix]!;
          cb.fields.add(Field((fb) {
            fb
              ..name = element.name.toLowerCaseFirst()
              ..modifier = FieldModifier.final$;
            if (element.isList) {
              fb.type = refer(element.isOptional
                  ? "List<${fieldType.type}>?"
                  : "List<${fieldType.type}>");
              if (element.isOptional) {
                code.write("if (${element.name.toLowerCaseFirst()} != null) {"
                    "for (${fieldType.type} value in ${element.name.toLowerCaseFirst()}!) {"
                    "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace\", nest: () {"
                    "value.toXml(xmlBuilder);"
                    "});}}");
              } else {
                code.write(
                    "for (${fieldType.type} value in ${element.name.toLowerCaseFirst()}) {"
                    "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace\", nest: () {"
                    "value.toXml(xmlBuilder);"
                    "});}");
              }
            } else if (element.isOptional) {
              fb.type = refer("${fieldType.type}?");
              code.write("if (${element.name.toLowerCaseFirst()} != null) {"
                  "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace\", nest: () {"
                  "${element.name.toLowerCaseFirst()}!.toXml(xmlBuilder); });}");
            } else {
              fb.type = refer(fieldType.type);
              code.write(
                  "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace\", nest: () {"
                  "${element.name.toLowerCaseFirst()}.toXml(xmlBuilder); });");
            }
          }));
        }
        cb.methods.add(Method((mb) {
          mb
            ..name = "toXml"
            ..annotations.add(refer("override"))
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = "xmlBuilder"
              ..type = refer("XmlBuilder")));

          mb.body = Code(code.toString());
        }));
      } else if (complexType.choices.isNotEmpty) {
        cb.constructors.add(Constructor((cb) {
          for (Element element in complexType.choices) {
            if (element.isList) {
              cb.optionalParameters.add(Parameter((pb) => pb
                ..name = element.name.toLowerCaseFirst()
                ..named = true
                ..required = false
                ..toThis = true));
            } else {
              cb.optionalParameters.add(Parameter((pb) => pb
                ..name = element.name.toLowerCaseFirst()
                ..named = true
                ..required = false
                ..toThis = true));
            }
          }
        }));

        StringBuffer code = StringBuffer();

        for (Element element in complexType.choices) {
          OutputType fieldType = getType(element.type);
          String namespace = namespaces[element.prefix]!;
          cb.fields.add(Field((fb) {
            fb
              ..name = element.name.toLowerCaseFirst()
              ..modifier = FieldModifier.final$;
            if (element.isList) {
              fb.type = refer("List<${fieldType.type}>?");
              code.write("if (${element.name.toLowerCaseFirst()} != null) {"
                  "for (${fieldType.type} value in ${element.name.toLowerCaseFirst()}!) {"
                  "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace}\", nest: () {"
                  "${fieldType.isInternal ? "xmlBuilder.text(value);" : "value.toXml(xmlBuilder);"}"
                  "});}}");
            } else {
              fb.type = refer("${fieldType.type}?");
              code.write("if (${element.name.toLowerCaseFirst()} != null) {"
                  "xmlBuilder.element(\"${element.name}\", namespace: \"$namespace\", nest: () {"
                  "${fieldType.isInternal ? "xmlBuilder.text(${element.name.toLowerCaseFirst()}!);" : "${element.name.toLowerCaseFirst()}!.toXml(xmlBuilder);"}"
                  "});}");
            }
          }));
        }

        cb.methods.add(Method((mb) {
          mb
            ..name = "toXml"
            ..annotations.add(refer("override"))
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = "xmlBuilder"
              ..type = refer("XmlBuilder")));

          mb.body = Code(code.toString());
        }));
      }
    });

    final emitter = DartEmitter(useNullSafetySyntax: true);
    //print(DartFormatter().format('${node.accept(emitter)}'));

    return node.accept(emitter);
  }

  createBaseClass() {
    Class node = Class((cb) {
      cb.name = "XmlNode";
      cb.abstract = true;
      cb.fields.add(Field((fb) => fb
        ..name = "namespace"
        ..type = refer("String?")
        ..modifier = FieldModifier.final$));
      cb.constructors.add(Constructor((cb) {
        cb.optionalParameters.add(Parameter((pb) => pb
          ..name = "namespace"
          ..named = true
          ..toThis = true));
      }));
      cb.methods.add(Method((mb) => mb
        ..name = "toXml"
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = "xmlBuilder"
          ..type = refer("XmlBuilder")))));
    });
    StringBuffer sb = StringBuffer();

    sb.write("import 'package:xml/xml.dart';\n"
        "part \"generated_schema.g.dart\";\n");

    final emitter = DartEmitter(useNullSafetySyntax: true);

    sb.write(node.accept(emitter));

    File("lib/generated_schema.dart")
        .writeAsStringSync(DartFormatter().format(sb.toString()));
  }

  run(String fileName) {
    final file = File(fileName);

    final document = XmlDocument.parse(file.readAsStringSync());

    XmlElement root = document.rootElement;
    if (root.name.local == "schema") {
      processSchema(file.absolute.parent, root);
    } else {
      print("Root element is not schema");
    }

    StringBuffer sb = StringBuffer();

    sb.writeln("part of 'generated_schema.dart';");
    for (MapEntry<String, ComplexType> entry in complexTypes.entries) {
//      if (entry.key.contains("TradeAddressType")) {
      //print("${entry.key} ${entry.value}");
      sb.writeln(generateCode(entry.key, entry.value));
      //}
    }
/*    print("-----------------------------");
    for (MapEntry<String, SimpleType> entry in simpleTypes.entries) {
      if (entry.key.contains("TradeAddressType")) {
        print("${entry.key} ${entry.value}");
      }
    }*/
    File("lib/generated_schema.g.dart")
        .writeAsStringSync(DartFormatter().format(sb.toString()));

    createBaseClass();
  }
}
