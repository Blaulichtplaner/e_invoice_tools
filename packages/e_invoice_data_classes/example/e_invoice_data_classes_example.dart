import 'dart:io';

import 'package:e_invoice_data_classes/e_invoice_data_classes.dart';
import 'package:xml/xml.dart';

void main() {
  final builder = XmlBuilder();

  builder.namespace(nsRam, "ram");
  builder.processing('xml', 'version="1.0"');
  CrossIndustryInvoice crossIndustryInvoice = CrossIndustryInvoice(
      supplyChainTradeTransaction: SupplyChainTradeTransactionType(
          applicableHeaderTradeSettlement: HeaderTradeSettlementType(
            paymentReference: TextType(value: "Rechnung 181301674"),
            invoiceCurrencyCode: CurrencyCodeType(value: "EUR"),
            specifiedTradeSettlementPaymentMeans: [
              TradeSettlementPaymentMeansType(
                typeCode: PaymentMeansCodeType(value: "58"),
                payeePartyCreditorFinancialAccount:
                    CreditorFinancialAccountType(
                  iBANID: IDType(value: "DE91100000000123456789"),
                ),
              )
            ],
            applicableTradeTax: [
              TradeTaxType(
                calculatedAmount: AmountType(value: "47.9"),
                typeCode: TaxTypeCodeType(value: "VAT"),
                basisAmount: AmountType(value: "252.1"),
                categoryCode: TaxCategoryCodeType(value: "S"),
                rateApplicablePercent: PercentType(value: "19"),
              )
            ],
            specifiedTradePaymentTerms: [
              TradePaymentTermsType(
                description: TextType(value: "Zahlbar sofort rein netto"),
              ),
            ],
            specifiedTradeSettlementHeaderMonetarySummation:
                TradeSettlementHeaderMonetarySummationType(
              // Summe der Nettobeträge aller Rechnungspositionen
              lineTotalAmount: AmountType(value: "252.1"),
              chargeTotalAmount: AmountType(value: "0"),
              allowanceTotalAmount: AmountType(value: "0"),

              // Rechnungsgesamtbetrag ohne Umsatzsteuer
              taxBasisTotalAmount: AmountType(value: "252.1"),
              taxTotalAmount: [AmountType(currencyID: "EUR", value: "47.9")],
              // Rechnungsgesamtbetrag einschließlich Umsatzsteuer
              grandTotalAmount: AmountType(value: "300"),
              totalPrepaidAmount: AmountType(value: "0"),
              // Fälliger Zahlungsbetrag
              duePayableAmount: AmountType(value: "300"),
            ),
            receivableSpecifiedTradeAccountingAccount: [
              TradeAccountingAccountType(
                iD: IDType(value: "420"),
              )
            ],
          ),
          applicableHeaderTradeDelivery: HeaderTradeDeliveryType(
              actualDeliverySupplyChainEvent: SupplyChainEventType(
                  occurrenceDateTime: DateTimeType(
                      dateTimeString:
                          DateTimeString(value: "20241101", format: "102")))),
          applicableHeaderTradeAgreement: HeaderTradeAgreementType(
            buyerReference: TextType(value: "04011000-12345-34"),
            sellerTradeParty: TradePartyType(
              globalID: [IDType(schemeID: "0088", value: "4000001123452")],
              name: TextType(value: "ELEKTRON Industrieservice GmbH"),
              description: TextType(
                  value: "Geschäftsführer Egon Schrempp\n"
                      "Amtsgericht Stuttgart HRB 1234"),
              definedTradeContact: [
                TradeContactType(
                  personName: TextType(value: "Max Mustermann"),
                  departmentName: TextType(value: "Muster-Einkauf"),
                  telephoneUniversalCommunication: UniversalCommunicationType(
                    completeNumber: TextType(value: "+49891234567"),
                  ),
                  emailURIUniversalCommunication: UniversalCommunicationType(
                    uRIID: IDType(value: "Max@Mustermann.de"),
                  ),
                )
              ],
              postalTradeAddress: TradeAddressType(
                lineOne: TextType(value: "Erfurter Strasse 13"),
                postcodeCode: CodeType(value: "74465"),
                cityName: TextType(value: "Demoort"),
                countryID: CountryIDType(value: "DE"),
              ),
              uRIUniversalCommunication: UniversalCommunicationType(
                uRIID: IDType(schemeID: "EM", value: "info@Mustermann.de"),
              ),
              specifiedTaxRegistration: [
                TaxRegistrationType(
                    iD: IDType(schemeID: "FC", value: "201/113/40209")),
                TaxRegistrationType(
                    iD: IDType(schemeID: "VA", value: "DE123456789"))
              ],
            ),
            buyerTradeParty: TradePartyType(
              iD: [IDType(value: "16259")],
              name: TextType(value: "ConsultingService GmbH"),
              postalTradeAddress: TradeAddressType(
                lineOne: TextType(value: "Musterstr. 18"),
                postcodeCode: CodeType(value: "76138"),
                cityName: TextType(value: "Karlsruhe"),
                countryID: CountryIDType(value: "DE"),
              ),
              uRIUniversalCommunication: UniversalCommunicationType(
                uRIID: IDType(schemeID: "EM", value: "info@kunde.de"),
              ),
            ),
            sellerOrderReferencedDocument: ReferencedDocumentType(
              issuerAssignedID: IDType(value: "per Mail vom 01.10.2024"),
            ),
            additionalReferencedDocument: [
              ReferencedDocumentType(
                issuerAssignedID: IDType(value: "Aufmass"),
                typeCode: DocumentCodeType(value: "916"),
                name: TextType(value: "Aufmass.png"),
              ),
              ReferencedDocumentType(
                issuerAssignedID: IDType(value: "ElektronRapport"),
                typeCode: DocumentCodeType(value: "916"),
                name: TextType(value: "ElektronRapport"),
              )
            ],
            specifiedProcuringProject: ProcuringProjectType(
              iD: IDType(value: "13130162"),
              name: TextType(value: "Projekt"),
            ),
          ),
          includedSupplyChainTradeLineItem: [
            SupplyChainTradeLineItemType(
              associatedDocumentLineDocument: DocumentLineDocumentType(
                  lineID: IDType(value: "01"),
                  includedNote: [
                    NoteType(
                      content: TextType(
                          value: "01 Beamermontage\n"
                              "Für die doppelte Verlegung, falls erforderlich."),
                    )
                  ]),
              specifiedTradeProduct: TradeProductType(
                  name: TextType(value: "TGA Obermonteur/Monteur")),
              specifiedLineTradeAgreement: LineTradeAgreementType(
                netPriceProductTradePrice: TradePriceType(
                  chargeAmount: AmountType(value: "43.2"),
                ),
                grossPriceProductTradePrice: TradePriceType(
                  chargeAmount: AmountType(value: "43.2"),
                ),
              ),
              specifiedLineTradeDelivery: LineTradeDeliveryType(
                  billedQuantity: QuantityType(unitCode: "HUR", value: "3")),
              specifiedLineTradeSettlement: LineTradeSettlementType(
                applicableTradeTax: [
                  TradeTaxType(
                    typeCode: TaxTypeCodeType(value: "VAT"),
                    categoryCode: TaxCategoryCodeType(
                      value: "S",
                    ),
                    rateApplicablePercent: PercentType(value: "19"),
                  )
                ],
                specifiedTradeSettlementLineMonetarySummation:
                    TradeSettlementLineMonetarySummationType(
                  lineTotalAmount: AmountType(value: "129.6"),
                ),
              ),
            ),
            SupplyChainTradeLineItemType(
              associatedDocumentLineDocument: DocumentLineDocumentType(
                  lineID: IDType(value: "02"),
                  includedNote: [
                    NoteType(
                      content: TextType(value: "02 Außerhalb Angebot"),
                    )
                  ]),
              specifiedTradeProduct: TradeProductType(
                  name: TextType(value: "Beamer-Deckenhalterung")),
              specifiedLineTradeAgreement: LineTradeAgreementType(
                netPriceProductTradePrice: TradePriceType(
                  chargeAmount: AmountType(value: "122.5"),
                ),
                grossPriceProductTradePrice: TradePriceType(
                  chargeAmount: AmountType(value: "122.5"),
                ),
              ),
              specifiedLineTradeDelivery: LineTradeDeliveryType(
                  billedQuantity: QuantityType(unitCode: "H87", value: "1")),
              specifiedLineTradeSettlement: LineTradeSettlementType(
                applicableTradeTax: [
                  TradeTaxType(
                    typeCode: TaxTypeCodeType(value: "VAT"),
                    categoryCode: TaxCategoryCodeType(
                      value: "S",
                    ),
                    rateApplicablePercent: PercentType(value: "19"),
                  )
                ],
                specifiedTradeSettlementLineMonetarySummation:
                    TradeSettlementLineMonetarySummationType(
                  lineTotalAmount: AmountType(value: "122.5"),
                ),
              ),
            ),
          ]),
      exchangedDocument: ExchangedDocumentType(
        iD: IDType(value: "181301674"),
        typeCode: DocumentCodeType(value: "877"),
        issueDateTime: DateTimeType(
          dateTimeString: DateTimeString(value: "20241115", format: "102"),
        ),
        includedNote: [
          NoteType(
            content: TextType(
              value: "Rapport-Nr.: 42389 vom 01.11.2024\n\n"
                  "Im 2. OG BT1 Besprechungsraum eine Beamerhalterung an die Decke montiert. Dafür eine Deckenplatte ausgesägt. Beamerhalterung zur Montage auseinander gebaut. Ein Stromkabel für den Beamer, ein HDMI Kabel und ein VGA Kabel durch die Halterung gezogen. Beamerhalterung wieder zusammengebaut und Beamer montiert. Beamer verkabelt und ausgerichtet. Decke geschlossen.",
            ),
          ),
        ],
      ),
      exchangedDocumentContext: ExchangedDocumentContextType(
        businessProcessSpecifiedDocumentContextParameter:
            DocumentContextParameterType(
                iD: IDType(
                    value: "urn:fdc:peppol.eu:2017:poacc:billing:01:1.0")),
        guidelineSpecifiedDocumentContextParameter: DocumentContextParameterType(
            iD: IDType(
                value:
                    "urn:cen.eu:en16931:2017#compliant#urn:xeinkauf.de:kosit:xrechnung_3.0")),
      ));

  crossIndustryInvoice.toXml(builder);
  final document = builder.buildDocument();
  String result = document.toXmlString(pretty: true, indent: '  ');
  File('invoice_schema.xml').writeAsStringSync(result);
}
