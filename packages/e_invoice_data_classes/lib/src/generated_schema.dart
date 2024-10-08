import 'package:xml/xml.dart';
part "generated_schema.g.dart";

abstract class XmlNode {
  XmlNode({this.namespace});

  final String? namespace;

  toXml(XmlBuilder xmlBuilder);
}

const nsRam =
    "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100";
const nsRsm = "urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100";
const nsQdt = "urn:un:unece:uncefact:data:standard:QualifiedDataType:100";
const nsXs = "http://www.w3.org/2001/XMLSchema";
const nsUdt = "urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100";

class CrossIndustryInvoice extends XmlNode {
  final ExchangedDocumentContextType exchangedDocumentContext;
  final ExchangedDocumentType exchangedDocument;
  final SupplyChainTradeTransactionType supplyChainTradeTransaction;

  CrossIndustryInvoice(
      {required this.supplyChainTradeTransaction,
      required this.exchangedDocument,
      required this.exchangedDocumentContext})
      : super(namespace: nsRsm);

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element('CrossIndustryInvoice', namespace: nsRsm, namespaces: {
      nsRsm: "rsm",
      nsRam: "ram",
      nsQdt: "qdt",
      nsXs: "xs",
      nsUdt: "udt"
    }, nest: () {
      xmlBuilder.element("ExchangedDocumentContext", namespace: nsRsm,
          nest: () {
        exchangedDocumentContext.toXml(xmlBuilder);
      });
      xmlBuilder.element("ExchangedDocument", namespace: nsRsm, nest: () {
        exchangedDocument.toXml(xmlBuilder);
      });
      xmlBuilder.element("SupplyChainTradeTransaction", namespace: nsRsm,
          nest: () {
        supplyChainTradeTransaction.toXml(xmlBuilder);
      });
    });
  }
}
