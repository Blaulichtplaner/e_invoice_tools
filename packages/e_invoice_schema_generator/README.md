A simpled and quite baised schema generator for the ZUGFeRD 2.3 EXTENDED schema. 

## Usage

Get the latest schema files for the ZUGFeRD 2.3 EXTENDED schema and place them in a folder. 

```bash
dart bin/e_invoice_schema_generator.dart FACTUR-X_EXTENDED.xsd
```

Please note that after the code generation you have to manually adjust the one part of the generated code. Especially the DateTimeString class has to be modified as it exists twice in the schema and the format field has to converted to a string.

Have a look at the package with the already generated classes.