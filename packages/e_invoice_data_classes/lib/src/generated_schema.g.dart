part of 'generated_schema.dart';

class AccountingAccountTypeCodeType extends XmlNode {
  AccountingAccountTypeCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class AllowanceChargeReasonCodeType extends XmlNode {
  AllowanceChargeReasonCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class ContactTypeCodeType extends XmlNode {
  ContactTypeCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class CountryIDType extends XmlNode {
  CountryIDType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class CurrencyCodeType extends XmlNode {
  CurrencyCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class DeliveryTermsCodeType extends XmlNode {
  DeliveryTermsCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class DocumentCodeType extends XmlNode {
  DocumentCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class DateTimeString extends XmlNode {
  DateTimeString({
    required this.value,
    required this.format,
  });

  final String value;

  final String format;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.attribute("format", format);
    xmlBuilder.text(value);
  }
}

class FormattedDateTimeType extends XmlNode {
  FormattedDateTimeType({required this.dateTimeString});

  final DateTimeString dateTimeString;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("DateTimeString",
        namespace: "urn:un:unece:uncefact:data:standard:QualifiedDataType:100",
        nest: () {
      dateTimeString.toXml(xmlBuilder);
    });
  }
}

class LineStatusCodeType extends XmlNode {
  LineStatusCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class PartyRoleCodeType extends XmlNode {
  PartyRoleCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class PaymentMeansCodeType extends XmlNode {
  PaymentMeansCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class ReferenceCodeType extends XmlNode {
  ReferenceCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class TaxCategoryCodeType extends XmlNode {
  TaxCategoryCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class TaxTypeCodeType extends XmlNode {
  TaxTypeCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class TimeReferenceCodeType extends XmlNode {
  TimeReferenceCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class TransportModeCodeType extends XmlNode {
  TransportModeCodeType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class AmountType extends XmlNode {
  AmountType({
    required this.value,
    this.currencyID,
  });

  final String value;

  final String? currencyID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (currencyID != null) {
      xmlBuilder.attribute("currencyID", currencyID);
    }
    xmlBuilder.text(value);
  }
}

class BinaryObjectType extends XmlNode {
  BinaryObjectType({
    required this.value,
    required this.mimeCode,
    required this.filename,
  });

  final String value;

  final String mimeCode;

  final String filename;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.attribute("mimeCode", mimeCode);
    xmlBuilder.attribute("filename", filename);
    xmlBuilder.text(value);
  }
}

class CodeType extends XmlNode {
  CodeType({
    required this.value,
    this.listID,
    this.listVersionID,
  });

  final String value;

  final String? listID;

  final String? listVersionID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (listID != null) {
      xmlBuilder.attribute("listID", listID);
    }
    if (listVersionID != null) {
      xmlBuilder.attribute("listVersionID", listVersionID);
    }
    xmlBuilder.text(value);
  }
}

class DateTimeType extends XmlNode {
  DateTimeType({this.dateTimeString});

  final DateTimeString? dateTimeString;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (dateTimeString != null) {
      xmlBuilder.element("DateTimeString",
          namespace:
              "urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100",
          nest: () {
        dateTimeString!.toXml(xmlBuilder);
      });
    }
  }
}

class DateString extends XmlNode {
  DateString({
    required this.value,
    required this.format,
  });

  final String value;

  final String format;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.attribute("format", format);
    xmlBuilder.text(value);
  }
}

class DateType extends XmlNode {
  DateType({this.dateString});

  final DateString? dateString;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (dateString != null) {
      xmlBuilder.element("DateString",
          namespace:
              "urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100",
          nest: () {
        dateString!.toXml(xmlBuilder);
      });
    }
  }
}

class IDType extends XmlNode {
  IDType({
    required this.value,
    this.schemeID,
  });

  final String value;

  final String? schemeID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (schemeID != null) {
      xmlBuilder.attribute("schemeID", schemeID);
    }
    xmlBuilder.text(value);
  }
}

class IndicatorType extends XmlNode {
  IndicatorType({this.indicator});

  final bool? indicator;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (indicator != null) {
      xmlBuilder.element("Indicator",
          namespace:
              "urn:un:unece:uncefact:data:standard:UnqualifiedDataType:100",
          nest: () {
        xmlBuilder.text(indicator!);
      });
    }
  }
}

class MeasureType extends XmlNode {
  MeasureType({
    required this.value,
    this.unitCode,
  });

  final String value;

  final String? unitCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (unitCode != null) {
      xmlBuilder.attribute("unitCode", unitCode);
    }
    xmlBuilder.text(value);
  }
}

class NumericType extends XmlNode {
  NumericType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class PercentType extends XmlNode {
  PercentType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class QuantityType extends XmlNode {
  QuantityType({
    required this.value,
    this.unitCode,
  });

  final String value;

  final String? unitCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (unitCode != null) {
      xmlBuilder.attribute("unitCode", unitCode);
    }
    xmlBuilder.text(value);
  }
}

class RateType extends XmlNode {
  RateType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class TextType extends XmlNode {
  TextType({required this.value});

  final String value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.text(value);
  }
}

class AdvancePaymentType extends XmlNode {
  AdvancePaymentType({
    required this.paidAmount,
    this.formattedReceivedDateTime,
    required this.includedTradeTax,
    this.invoiceSpecifiedReferencedDocument,
  });

  final AmountType paidAmount;

  final FormattedDateTimeType? formattedReceivedDateTime;

  final List<TradeTaxType> includedTradeTax;

  final ReferencedDocumentType? invoiceSpecifiedReferencedDocument;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("PaidAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      paidAmount.toXml(xmlBuilder);
    });
    if (formattedReceivedDateTime != null) {
      xmlBuilder.element("FormattedReceivedDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        formattedReceivedDateTime!.toXml(xmlBuilder);
      });
    }
    for (TradeTaxType value in includedTradeTax) {
      xmlBuilder.element("IncludedTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        value.toXml(xmlBuilder);
      });
    }
    if (invoiceSpecifiedReferencedDocument != null) {
      xmlBuilder.element("InvoiceSpecifiedReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        invoiceSpecifiedReferencedDocument!.toXml(xmlBuilder);
      });
    }
  }
}

class CreditorFinancialAccountType extends XmlNode {
  CreditorFinancialAccountType({
    this.iBANID,
    this.accountName,
    this.proprietaryID,
  });

  final IDType? iBANID;

  final TextType? accountName;

  final IDType? proprietaryID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (iBANID != null) {
      xmlBuilder.element("IBANID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        iBANID!.toXml(xmlBuilder);
      });
    }
    if (accountName != null) {
      xmlBuilder.element("AccountName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        accountName!.toXml(xmlBuilder);
      });
    }
    if (proprietaryID != null) {
      xmlBuilder.element("ProprietaryID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        proprietaryID!.toXml(xmlBuilder);
      });
    }
  }
}

class CreditorFinancialInstitutionType extends XmlNode {
  CreditorFinancialInstitutionType({required this.bICID});

  final IDType bICID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("BICID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      bICID.toXml(xmlBuilder);
    });
  }
}

class DebtorFinancialAccountType extends XmlNode {
  DebtorFinancialAccountType({required this.iBANID});

  final IDType iBANID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("IBANID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iBANID.toXml(xmlBuilder);
    });
  }
}

class DocumentContextParameterType extends XmlNode {
  DocumentContextParameterType({required this.iD});

  final IDType iD;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
  }
}

class DocumentLineDocumentType extends XmlNode {
  DocumentLineDocumentType({
    required this.lineID,
    this.parentLineID,
    this.lineStatusCode,
    this.lineStatusReasonCode,
    this.includedNote,
  });

  final IDType lineID;

  final IDType? parentLineID;

  final LineStatusCodeType? lineStatusCode;

  final CodeType? lineStatusReasonCode;

  final List<NoteType>? includedNote;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("LineID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      lineID.toXml(xmlBuilder);
    });
    if (parentLineID != null) {
      xmlBuilder.element("ParentLineID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        parentLineID!.toXml(xmlBuilder);
      });
    }
    if (lineStatusCode != null) {
      xmlBuilder.element("LineStatusCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineStatusCode!.toXml(xmlBuilder);
      });
    }
    if (lineStatusReasonCode != null) {
      xmlBuilder.element("LineStatusReasonCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineStatusReasonCode!.toXml(xmlBuilder);
      });
    }
    if (includedNote != null) {
      for (NoteType value in includedNote!) {
        xmlBuilder.element("IncludedNote",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class ExchangedDocumentContextType extends XmlNode {
  ExchangedDocumentContextType({
    this.testIndicator,
    this.businessProcessSpecifiedDocumentContextParameter,
    required this.guidelineSpecifiedDocumentContextParameter,
  });

  final IndicatorType? testIndicator;

  final DocumentContextParameterType?
      businessProcessSpecifiedDocumentContextParameter;

  final DocumentContextParameterType guidelineSpecifiedDocumentContextParameter;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (testIndicator != null) {
      xmlBuilder.element("TestIndicator",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        testIndicator!.toXml(xmlBuilder);
      });
    }
    if (businessProcessSpecifiedDocumentContextParameter != null) {
      xmlBuilder.element("BusinessProcessSpecifiedDocumentContextParameter",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        businessProcessSpecifiedDocumentContextParameter!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("GuidelineSpecifiedDocumentContextParameter",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      guidelineSpecifiedDocumentContextParameter.toXml(xmlBuilder);
    });
  }
}

class ExchangedDocumentType extends XmlNode {
  ExchangedDocumentType({
    required this.iD,
    this.name,
    required this.typeCode,
    required this.issueDateTime,
    this.copyIndicator,
    this.languageID,
    this.includedNote,
    this.effectiveSpecifiedPeriod,
  });

  final IDType iD;

  final TextType? name;

  final DocumentCodeType typeCode;

  final DateTimeType issueDateTime;

  final IndicatorType? copyIndicator;

  final IDType? languageID;

  final List<NoteType>? includedNote;

  final SpecifiedPeriodType? effectiveSpecifiedPeriod;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
    if (name != null) {
      xmlBuilder.element("Name",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        name!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("TypeCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      typeCode.toXml(xmlBuilder);
    });
    xmlBuilder.element("IssueDateTime",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      issueDateTime.toXml(xmlBuilder);
    });
    if (copyIndicator != null) {
      xmlBuilder.element("CopyIndicator",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        copyIndicator!.toXml(xmlBuilder);
      });
    }
    if (languageID != null) {
      xmlBuilder.element("LanguageID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        languageID!.toXml(xmlBuilder);
      });
    }
    if (includedNote != null) {
      for (NoteType value in includedNote!) {
        xmlBuilder.element("IncludedNote",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (effectiveSpecifiedPeriod != null) {
      xmlBuilder.element("EffectiveSpecifiedPeriod",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        effectiveSpecifiedPeriod!.toXml(xmlBuilder);
      });
    }
  }
}

class HeaderTradeAgreementType extends XmlNode {
  HeaderTradeAgreementType({
    this.buyerReference,
    required this.sellerTradeParty,
    required this.buyerTradeParty,
    this.salesAgentTradeParty,
    this.buyerTaxRepresentativeTradeParty,
    this.sellerTaxRepresentativeTradeParty,
    this.productEndUserTradeParty,
    this.applicableTradeDeliveryTerms,
    this.sellerOrderReferencedDocument,
    this.buyerOrderReferencedDocument,
    this.quotationReferencedDocument,
    this.contractReferencedDocument,
    this.additionalReferencedDocument,
    this.buyerAgentTradeParty,
    this.specifiedProcuringProject,
    this.ultimateCustomerOrderReferencedDocument,
  });

  final TextType? buyerReference;

  final TradePartyType sellerTradeParty;

  final TradePartyType buyerTradeParty;

  final TradePartyType? salesAgentTradeParty;

  final TradePartyType? buyerTaxRepresentativeTradeParty;

  final TradePartyType? sellerTaxRepresentativeTradeParty;

  final TradePartyType? productEndUserTradeParty;

  final TradeDeliveryTermsType? applicableTradeDeliveryTerms;

  final ReferencedDocumentType? sellerOrderReferencedDocument;

  final ReferencedDocumentType? buyerOrderReferencedDocument;

  final ReferencedDocumentType? quotationReferencedDocument;

  final ReferencedDocumentType? contractReferencedDocument;

  final List<ReferencedDocumentType>? additionalReferencedDocument;

  final TradePartyType? buyerAgentTradeParty;

  final ProcuringProjectType? specifiedProcuringProject;

  final List<ReferencedDocumentType>? ultimateCustomerOrderReferencedDocument;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (buyerReference != null) {
      xmlBuilder.element("BuyerReference",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerReference!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("SellerTradeParty",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      sellerTradeParty.toXml(xmlBuilder);
    });
    xmlBuilder.element("BuyerTradeParty",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      buyerTradeParty.toXml(xmlBuilder);
    });
    if (salesAgentTradeParty != null) {
      xmlBuilder.element("SalesAgentTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        salesAgentTradeParty!.toXml(xmlBuilder);
      });
    }
    if (buyerTaxRepresentativeTradeParty != null) {
      xmlBuilder.element("BuyerTaxRepresentativeTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerTaxRepresentativeTradeParty!.toXml(xmlBuilder);
      });
    }
    if (sellerTaxRepresentativeTradeParty != null) {
      xmlBuilder.element("SellerTaxRepresentativeTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sellerTaxRepresentativeTradeParty!.toXml(xmlBuilder);
      });
    }
    if (productEndUserTradeParty != null) {
      xmlBuilder.element("ProductEndUserTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        productEndUserTradeParty!.toXml(xmlBuilder);
      });
    }
    if (applicableTradeDeliveryTerms != null) {
      xmlBuilder.element("ApplicableTradeDeliveryTerms",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        applicableTradeDeliveryTerms!.toXml(xmlBuilder);
      });
    }
    if (sellerOrderReferencedDocument != null) {
      xmlBuilder.element("SellerOrderReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sellerOrderReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (buyerOrderReferencedDocument != null) {
      xmlBuilder.element("BuyerOrderReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerOrderReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (quotationReferencedDocument != null) {
      xmlBuilder.element("QuotationReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        quotationReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (contractReferencedDocument != null) {
      xmlBuilder.element("ContractReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        contractReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (additionalReferencedDocument != null) {
      for (ReferencedDocumentType value in additionalReferencedDocument!) {
        xmlBuilder.element("AdditionalReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (buyerAgentTradeParty != null) {
      xmlBuilder.element("BuyerAgentTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerAgentTradeParty!.toXml(xmlBuilder);
      });
    }
    if (specifiedProcuringProject != null) {
      xmlBuilder.element("SpecifiedProcuringProject",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        specifiedProcuringProject!.toXml(xmlBuilder);
      });
    }
    if (ultimateCustomerOrderReferencedDocument != null) {
      for (ReferencedDocumentType value
          in ultimateCustomerOrderReferencedDocument!) {
        xmlBuilder.element("UltimateCustomerOrderReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class HeaderTradeDeliveryType extends XmlNode {
  HeaderTradeDeliveryType({
    this.relatedSupplyChainConsignment,
    this.shipToTradeParty,
    this.ultimateShipToTradeParty,
    this.shipFromTradeParty,
    this.actualDeliverySupplyChainEvent,
    this.despatchAdviceReferencedDocument,
    this.receivingAdviceReferencedDocument,
    this.deliveryNoteReferencedDocument,
  });

  final SupplyChainConsignmentType? relatedSupplyChainConsignment;

  final TradePartyType? shipToTradeParty;

  final TradePartyType? ultimateShipToTradeParty;

  final TradePartyType? shipFromTradeParty;

  final SupplyChainEventType? actualDeliverySupplyChainEvent;

  final ReferencedDocumentType? despatchAdviceReferencedDocument;

  final ReferencedDocumentType? receivingAdviceReferencedDocument;

  final ReferencedDocumentType? deliveryNoteReferencedDocument;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (relatedSupplyChainConsignment != null) {
      xmlBuilder.element("RelatedSupplyChainConsignment",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        relatedSupplyChainConsignment!.toXml(xmlBuilder);
      });
    }
    if (shipToTradeParty != null) {
      xmlBuilder.element("ShipToTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        shipToTradeParty!.toXml(xmlBuilder);
      });
    }
    if (ultimateShipToTradeParty != null) {
      xmlBuilder.element("UltimateShipToTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        ultimateShipToTradeParty!.toXml(xmlBuilder);
      });
    }
    if (shipFromTradeParty != null) {
      xmlBuilder.element("ShipFromTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        shipFromTradeParty!.toXml(xmlBuilder);
      });
    }
    if (actualDeliverySupplyChainEvent != null) {
      xmlBuilder.element("ActualDeliverySupplyChainEvent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        actualDeliverySupplyChainEvent!.toXml(xmlBuilder);
      });
    }
    if (despatchAdviceReferencedDocument != null) {
      xmlBuilder.element("DespatchAdviceReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        despatchAdviceReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (receivingAdviceReferencedDocument != null) {
      xmlBuilder.element("ReceivingAdviceReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        receivingAdviceReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (deliveryNoteReferencedDocument != null) {
      xmlBuilder.element("DeliveryNoteReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        deliveryNoteReferencedDocument!.toXml(xmlBuilder);
      });
    }
  }
}

class HeaderTradeSettlementType extends XmlNode {
  HeaderTradeSettlementType({
    this.creditorReferenceID,
    this.paymentReference,
    this.taxCurrencyCode,
    required this.invoiceCurrencyCode,
    this.invoiceIssuerReference,
    this.invoicerTradeParty,
    this.invoiceeTradeParty,
    this.payeeTradeParty,
    this.payerTradeParty,
    this.taxApplicableTradeCurrencyExchange,
    this.specifiedTradeSettlementPaymentMeans,
    required this.applicableTradeTax,
    this.billingSpecifiedPeriod,
    this.specifiedTradeAllowanceCharge,
    this.specifiedLogisticsServiceCharge,
    this.specifiedTradePaymentTerms,
    required this.specifiedTradeSettlementHeaderMonetarySummation,
    this.invoiceReferencedDocument,
    this.receivableSpecifiedTradeAccountingAccount,
    this.specifiedAdvancePayment,
  });

  final IDType? creditorReferenceID;

  final TextType? paymentReference;

  final CurrencyCodeType? taxCurrencyCode;

  final CurrencyCodeType invoiceCurrencyCode;

  final TextType? invoiceIssuerReference;

  final TradePartyType? invoicerTradeParty;

  final TradePartyType? invoiceeTradeParty;

  final TradePartyType? payeeTradeParty;

  final TradePartyType? payerTradeParty;

  final TradeCurrencyExchangeType? taxApplicableTradeCurrencyExchange;

  final List<TradeSettlementPaymentMeansType>?
      specifiedTradeSettlementPaymentMeans;

  final List<TradeTaxType> applicableTradeTax;

  final SpecifiedPeriodType? billingSpecifiedPeriod;

  final List<TradeAllowanceChargeType>? specifiedTradeAllowanceCharge;

  final List<LogisticsServiceChargeType>? specifiedLogisticsServiceCharge;

  final List<TradePaymentTermsType>? specifiedTradePaymentTerms;

  final TradeSettlementHeaderMonetarySummationType
      specifiedTradeSettlementHeaderMonetarySummation;

  final List<ReferencedDocumentType>? invoiceReferencedDocument;

  final List<TradeAccountingAccountType>?
      receivableSpecifiedTradeAccountingAccount;

  final List<AdvancePaymentType>? specifiedAdvancePayment;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (creditorReferenceID != null) {
      xmlBuilder.element("CreditorReferenceID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        creditorReferenceID!.toXml(xmlBuilder);
      });
    }
    if (paymentReference != null) {
      xmlBuilder.element("PaymentReference",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        paymentReference!.toXml(xmlBuilder);
      });
    }
    if (taxCurrencyCode != null) {
      xmlBuilder.element("TaxCurrencyCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        taxCurrencyCode!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("InvoiceCurrencyCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      invoiceCurrencyCode.toXml(xmlBuilder);
    });
    if (invoiceIssuerReference != null) {
      xmlBuilder.element("InvoiceIssuerReference",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        invoiceIssuerReference!.toXml(xmlBuilder);
      });
    }
    if (invoicerTradeParty != null) {
      xmlBuilder.element("InvoicerTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        invoicerTradeParty!.toXml(xmlBuilder);
      });
    }
    if (invoiceeTradeParty != null) {
      xmlBuilder.element("InvoiceeTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        invoiceeTradeParty!.toXml(xmlBuilder);
      });
    }
    if (payeeTradeParty != null) {
      xmlBuilder.element("PayeeTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payeeTradeParty!.toXml(xmlBuilder);
      });
    }
    if (payerTradeParty != null) {
      xmlBuilder.element("PayerTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payerTradeParty!.toXml(xmlBuilder);
      });
    }
    if (taxApplicableTradeCurrencyExchange != null) {
      xmlBuilder.element("TaxApplicableTradeCurrencyExchange",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        taxApplicableTradeCurrencyExchange!.toXml(xmlBuilder);
      });
    }
    if (specifiedTradeSettlementPaymentMeans != null) {
      for (TradeSettlementPaymentMeansType value
          in specifiedTradeSettlementPaymentMeans!) {
        xmlBuilder.element("SpecifiedTradeSettlementPaymentMeans",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    for (TradeTaxType value in applicableTradeTax) {
      xmlBuilder.element("ApplicableTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        value.toXml(xmlBuilder);
      });
    }
    if (billingSpecifiedPeriod != null) {
      xmlBuilder.element("BillingSpecifiedPeriod",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        billingSpecifiedPeriod!.toXml(xmlBuilder);
      });
    }
    if (specifiedTradeAllowanceCharge != null) {
      for (TradeAllowanceChargeType value in specifiedTradeAllowanceCharge!) {
        xmlBuilder.element("SpecifiedTradeAllowanceCharge",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (specifiedLogisticsServiceCharge != null) {
      for (LogisticsServiceChargeType value
          in specifiedLogisticsServiceCharge!) {
        xmlBuilder.element("SpecifiedLogisticsServiceCharge",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (specifiedTradePaymentTerms != null) {
      for (TradePaymentTermsType value in specifiedTradePaymentTerms!) {
        xmlBuilder.element("SpecifiedTradePaymentTerms",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    xmlBuilder.element("SpecifiedTradeSettlementHeaderMonetarySummation",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedTradeSettlementHeaderMonetarySummation.toXml(xmlBuilder);
    });
    if (invoiceReferencedDocument != null) {
      for (ReferencedDocumentType value in invoiceReferencedDocument!) {
        xmlBuilder.element("InvoiceReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (receivableSpecifiedTradeAccountingAccount != null) {
      for (TradeAccountingAccountType value
          in receivableSpecifiedTradeAccountingAccount!) {
        xmlBuilder.element("ReceivableSpecifiedTradeAccountingAccount",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (specifiedAdvancePayment != null) {
      for (AdvancePaymentType value in specifiedAdvancePayment!) {
        xmlBuilder.element("SpecifiedAdvancePayment",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class LegalOrganizationType extends XmlNode {
  LegalOrganizationType({
    this.iD,
    this.tradingBusinessName,
    this.postalTradeAddress,
  });

  final IDType? iD;

  final TextType? tradingBusinessName;

  final TradeAddressType? postalTradeAddress;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (iD != null) {
      xmlBuilder.element("ID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        iD!.toXml(xmlBuilder);
      });
    }
    if (tradingBusinessName != null) {
      xmlBuilder.element("TradingBusinessName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        tradingBusinessName!.toXml(xmlBuilder);
      });
    }
    if (postalTradeAddress != null) {
      xmlBuilder.element("PostalTradeAddress",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        postalTradeAddress!.toXml(xmlBuilder);
      });
    }
  }
}

class LineTradeAgreementType extends XmlNode {
  LineTradeAgreementType({
    this.sellerOrderReferencedDocument,
    this.buyerOrderReferencedDocument,
    this.quotationReferencedDocument,
    this.contractReferencedDocument,
    this.additionalReferencedDocument,
    this.grossPriceProductTradePrice,
    required this.netPriceProductTradePrice,
    this.ultimateCustomerOrderReferencedDocument,
  });

  final ReferencedDocumentType? sellerOrderReferencedDocument;

  final ReferencedDocumentType? buyerOrderReferencedDocument;

  final ReferencedDocumentType? quotationReferencedDocument;

  final ReferencedDocumentType? contractReferencedDocument;

  final List<ReferencedDocumentType>? additionalReferencedDocument;

  final TradePriceType? grossPriceProductTradePrice;

  final TradePriceType netPriceProductTradePrice;

  final List<ReferencedDocumentType>? ultimateCustomerOrderReferencedDocument;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (sellerOrderReferencedDocument != null) {
      xmlBuilder.element("SellerOrderReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sellerOrderReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (buyerOrderReferencedDocument != null) {
      xmlBuilder.element("BuyerOrderReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerOrderReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (quotationReferencedDocument != null) {
      xmlBuilder.element("QuotationReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        quotationReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (contractReferencedDocument != null) {
      xmlBuilder.element("ContractReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        contractReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (additionalReferencedDocument != null) {
      for (ReferencedDocumentType value in additionalReferencedDocument!) {
        xmlBuilder.element("AdditionalReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (grossPriceProductTradePrice != null) {
      xmlBuilder.element("GrossPriceProductTradePrice",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        grossPriceProductTradePrice!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("NetPriceProductTradePrice",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      netPriceProductTradePrice.toXml(xmlBuilder);
    });
    if (ultimateCustomerOrderReferencedDocument != null) {
      for (ReferencedDocumentType value
          in ultimateCustomerOrderReferencedDocument!) {
        xmlBuilder.element("UltimateCustomerOrderReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class LineTradeDeliveryType extends XmlNode {
  LineTradeDeliveryType({
    required this.billedQuantity,
    this.chargeFreeQuantity,
    this.packageQuantity,
    this.shipToTradeParty,
    this.ultimateShipToTradeParty,
    this.actualDeliverySupplyChainEvent,
    this.despatchAdviceReferencedDocument,
    this.receivingAdviceReferencedDocument,
    this.deliveryNoteReferencedDocument,
  });

  final QuantityType billedQuantity;

  final QuantityType? chargeFreeQuantity;

  final QuantityType? packageQuantity;

  final TradePartyType? shipToTradeParty;

  final TradePartyType? ultimateShipToTradeParty;

  final SupplyChainEventType? actualDeliverySupplyChainEvent;

  final ReferencedDocumentType? despatchAdviceReferencedDocument;

  final ReferencedDocumentType? receivingAdviceReferencedDocument;

  final ReferencedDocumentType? deliveryNoteReferencedDocument;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("BilledQuantity",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      billedQuantity.toXml(xmlBuilder);
    });
    if (chargeFreeQuantity != null) {
      xmlBuilder.element("ChargeFreeQuantity",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        chargeFreeQuantity!.toXml(xmlBuilder);
      });
    }
    if (packageQuantity != null) {
      xmlBuilder.element("PackageQuantity",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        packageQuantity!.toXml(xmlBuilder);
      });
    }
    if (shipToTradeParty != null) {
      xmlBuilder.element("ShipToTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        shipToTradeParty!.toXml(xmlBuilder);
      });
    }
    if (ultimateShipToTradeParty != null) {
      xmlBuilder.element("UltimateShipToTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        ultimateShipToTradeParty!.toXml(xmlBuilder);
      });
    }
    if (actualDeliverySupplyChainEvent != null) {
      xmlBuilder.element("ActualDeliverySupplyChainEvent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        actualDeliverySupplyChainEvent!.toXml(xmlBuilder);
      });
    }
    if (despatchAdviceReferencedDocument != null) {
      xmlBuilder.element("DespatchAdviceReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        despatchAdviceReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (receivingAdviceReferencedDocument != null) {
      xmlBuilder.element("ReceivingAdviceReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        receivingAdviceReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (deliveryNoteReferencedDocument != null) {
      xmlBuilder.element("DeliveryNoteReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        deliveryNoteReferencedDocument!.toXml(xmlBuilder);
      });
    }
  }
}

class LineTradeSettlementType extends XmlNode {
  LineTradeSettlementType({
    required this.applicableTradeTax,
    this.billingSpecifiedPeriod,
    this.specifiedTradeAllowanceCharge,
    required this.specifiedTradeSettlementLineMonetarySummation,
    this.invoiceReferencedDocument,
    this.additionalReferencedDocument,
    this.receivableSpecifiedTradeAccountingAccount,
  });

  final List<TradeTaxType> applicableTradeTax;

  final SpecifiedPeriodType? billingSpecifiedPeriod;

  final List<TradeAllowanceChargeType>? specifiedTradeAllowanceCharge;

  final TradeSettlementLineMonetarySummationType
      specifiedTradeSettlementLineMonetarySummation;

  final ReferencedDocumentType? invoiceReferencedDocument;

  final List<ReferencedDocumentType>? additionalReferencedDocument;

  final TradeAccountingAccountType? receivableSpecifiedTradeAccountingAccount;

  @override
  toXml(XmlBuilder xmlBuilder) {
    for (TradeTaxType value in applicableTradeTax) {
      xmlBuilder.element("ApplicableTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        value.toXml(xmlBuilder);
      });
    }
    if (billingSpecifiedPeriod != null) {
      xmlBuilder.element("BillingSpecifiedPeriod",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        billingSpecifiedPeriod!.toXml(xmlBuilder);
      });
    }
    if (specifiedTradeAllowanceCharge != null) {
      for (TradeAllowanceChargeType value in specifiedTradeAllowanceCharge!) {
        xmlBuilder.element("SpecifiedTradeAllowanceCharge",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    xmlBuilder.element("SpecifiedTradeSettlementLineMonetarySummation",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedTradeSettlementLineMonetarySummation.toXml(xmlBuilder);
    });
    if (invoiceReferencedDocument != null) {
      xmlBuilder.element("InvoiceReferencedDocument",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        invoiceReferencedDocument!.toXml(xmlBuilder);
      });
    }
    if (additionalReferencedDocument != null) {
      for (ReferencedDocumentType value in additionalReferencedDocument!) {
        xmlBuilder.element("AdditionalReferencedDocument",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (receivableSpecifiedTradeAccountingAccount != null) {
      xmlBuilder.element("ReceivableSpecifiedTradeAccountingAccount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        receivableSpecifiedTradeAccountingAccount!.toXml(xmlBuilder);
      });
    }
  }
}

class LogisticsServiceChargeType extends XmlNode {
  LogisticsServiceChargeType({
    required this.description,
    required this.appliedAmount,
    required this.appliedTradeTax,
  });

  final TextType description;

  final AmountType appliedAmount;

  final List<TradeTaxType> appliedTradeTax;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("Description",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      description.toXml(xmlBuilder);
    });
    xmlBuilder.element("AppliedAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      appliedAmount.toXml(xmlBuilder);
    });
    for (TradeTaxType value in appliedTradeTax) {
      xmlBuilder.element("AppliedTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        value.toXml(xmlBuilder);
      });
    }
  }
}

class LogisticsTransportMovementType extends XmlNode {
  LogisticsTransportMovementType({required this.modeCode});

  final TransportModeCodeType modeCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ModeCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      modeCode.toXml(xmlBuilder);
    });
  }
}

class NoteType extends XmlNode {
  NoteType({
    this.contentCode,
    this.content,
    this.subjectCode,
  });

  final CodeType? contentCode;

  final TextType? content;

  final CodeType? subjectCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (contentCode != null) {
      xmlBuilder.element("ContentCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        contentCode!.toXml(xmlBuilder);
      });
    }
    if (content != null) {
      xmlBuilder.element("Content",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        content!.toXml(xmlBuilder);
      });
    }
    if (subjectCode != null) {
      xmlBuilder.element("SubjectCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        subjectCode!.toXml(xmlBuilder);
      });
    }
  }
}

class ProcuringProjectType extends XmlNode {
  ProcuringProjectType({
    required this.iD,
    required this.name,
  });

  final IDType iD;

  final TextType name;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
    xmlBuilder.element("Name",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      name.toXml(xmlBuilder);
    });
  }
}

class ProductCharacteristicType extends XmlNode {
  ProductCharacteristicType({
    this.typeCode,
    required this.description,
    this.valueMeasure,
    required this.value,
  });

  final CodeType? typeCode;

  final TextType description;

  final MeasureType? valueMeasure;

  final TextType value;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (typeCode != null) {
      xmlBuilder.element("TypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        typeCode!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("Description",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      description.toXml(xmlBuilder);
    });
    if (valueMeasure != null) {
      xmlBuilder.element("ValueMeasure",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        valueMeasure!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("Value",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      value.toXml(xmlBuilder);
    });
  }
}

class ProductClassificationType extends XmlNode {
  ProductClassificationType({
    this.classCode,
    this.className,
  });

  final CodeType? classCode;

  final TextType? className;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (classCode != null) {
      xmlBuilder.element("ClassCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        classCode!.toXml(xmlBuilder);
      });
    }
    if (className != null) {
      xmlBuilder.element("ClassName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        className!.toXml(xmlBuilder);
      });
    }
  }
}

class ReferencedDocumentType extends XmlNode {
  ReferencedDocumentType({
    this.issuerAssignedID,
    this.uRIID,
    this.lineID,
    this.typeCode,
    this.name,
    this.attachmentBinaryObject,
    this.referenceTypeCode,
    this.formattedIssueDateTime,
  });

  final IDType? issuerAssignedID;

  final IDType? uRIID;

  final IDType? lineID;

  final DocumentCodeType? typeCode;

  final TextType? name;

  final BinaryObjectType? attachmentBinaryObject;

  final ReferenceCodeType? referenceTypeCode;

  final FormattedDateTimeType? formattedIssueDateTime;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (issuerAssignedID != null) {
      xmlBuilder.element("IssuerAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        issuerAssignedID!.toXml(xmlBuilder);
      });
    }
    if (uRIID != null) {
      xmlBuilder.element("URIID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        uRIID!.toXml(xmlBuilder);
      });
    }
    if (lineID != null) {
      xmlBuilder.element("LineID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineID!.toXml(xmlBuilder);
      });
    }
    if (typeCode != null) {
      xmlBuilder.element("TypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        typeCode!.toXml(xmlBuilder);
      });
    }
    if (name != null) {
      xmlBuilder.element("Name",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        name!.toXml(xmlBuilder);
      });
    }
    if (attachmentBinaryObject != null) {
      xmlBuilder.element("AttachmentBinaryObject",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        attachmentBinaryObject!.toXml(xmlBuilder);
      });
    }
    if (referenceTypeCode != null) {
      xmlBuilder.element("ReferenceTypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        referenceTypeCode!.toXml(xmlBuilder);
      });
    }
    if (formattedIssueDateTime != null) {
      xmlBuilder.element("FormattedIssueDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        formattedIssueDateTime!.toXml(xmlBuilder);
      });
    }
  }
}

class ReferencedProductType extends XmlNode {
  ReferencedProductType({
    this.iD,
    this.globalID,
    this.sellerAssignedID,
    this.buyerAssignedID,
    this.industryAssignedID,
    required this.name,
    this.description,
    this.unitQuantity,
  });

  final IDType? iD;

  final List<IDType>? globalID;

  final IDType? sellerAssignedID;

  final IDType? buyerAssignedID;

  final IDType? industryAssignedID;

  final TextType name;

  final TextType? description;

  final QuantityType? unitQuantity;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (iD != null) {
      xmlBuilder.element("ID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        iD!.toXml(xmlBuilder);
      });
    }
    if (globalID != null) {
      for (IDType value in globalID!) {
        xmlBuilder.element("GlobalID",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (sellerAssignedID != null) {
      xmlBuilder.element("SellerAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sellerAssignedID!.toXml(xmlBuilder);
      });
    }
    if (buyerAssignedID != null) {
      xmlBuilder.element("BuyerAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerAssignedID!.toXml(xmlBuilder);
      });
    }
    if (industryAssignedID != null) {
      xmlBuilder.element("IndustryAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        industryAssignedID!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("Name",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      name.toXml(xmlBuilder);
    });
    if (description != null) {
      xmlBuilder.element("Description",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        description!.toXml(xmlBuilder);
      });
    }
    if (unitQuantity != null) {
      xmlBuilder.element("UnitQuantity",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        unitQuantity!.toXml(xmlBuilder);
      });
    }
  }
}

class SpecifiedPeriodType extends XmlNode {
  SpecifiedPeriodType({
    this.description,
    this.startDateTime,
    this.endDateTime,
    this.completeDateTime,
  });

  final TextType? description;

  final DateTimeType? startDateTime;

  final DateTimeType? endDateTime;

  final DateTimeType? completeDateTime;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (description != null) {
      xmlBuilder.element("Description",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        description!.toXml(xmlBuilder);
      });
    }
    if (startDateTime != null) {
      xmlBuilder.element("StartDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        startDateTime!.toXml(xmlBuilder);
      });
    }
    if (endDateTime != null) {
      xmlBuilder.element("EndDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        endDateTime!.toXml(xmlBuilder);
      });
    }
    if (completeDateTime != null) {
      xmlBuilder.element("CompleteDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        completeDateTime!.toXml(xmlBuilder);
      });
    }
  }
}

class SupplyChainConsignmentType extends XmlNode {
  SupplyChainConsignmentType({this.specifiedLogisticsTransportMovement});

  final List<LogisticsTransportMovementType>?
      specifiedLogisticsTransportMovement;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (specifiedLogisticsTransportMovement != null) {
      for (LogisticsTransportMovementType value
          in specifiedLogisticsTransportMovement!) {
        xmlBuilder.element("SpecifiedLogisticsTransportMovement",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class SupplyChainEventType extends XmlNode {
  SupplyChainEventType({required this.occurrenceDateTime});

  final DateTimeType occurrenceDateTime;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("OccurrenceDateTime",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      occurrenceDateTime.toXml(xmlBuilder);
    });
  }
}

class SupplyChainTradeLineItemType extends XmlNode {
  SupplyChainTradeLineItemType({
    required this.associatedDocumentLineDocument,
    required this.specifiedTradeProduct,
    required this.specifiedLineTradeAgreement,
    required this.specifiedLineTradeDelivery,
    required this.specifiedLineTradeSettlement,
  });

  final DocumentLineDocumentType associatedDocumentLineDocument;

  final TradeProductType specifiedTradeProduct;

  final LineTradeAgreementType specifiedLineTradeAgreement;

  final LineTradeDeliveryType specifiedLineTradeDelivery;

  final LineTradeSettlementType specifiedLineTradeSettlement;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("AssociatedDocumentLineDocument",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      associatedDocumentLineDocument.toXml(xmlBuilder);
    });
    xmlBuilder.element("SpecifiedTradeProduct",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedTradeProduct.toXml(xmlBuilder);
    });
    xmlBuilder.element("SpecifiedLineTradeAgreement",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedLineTradeAgreement.toXml(xmlBuilder);
    });
    xmlBuilder.element("SpecifiedLineTradeDelivery",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedLineTradeDelivery.toXml(xmlBuilder);
    });
    xmlBuilder.element("SpecifiedLineTradeSettlement",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      specifiedLineTradeSettlement.toXml(xmlBuilder);
    });
  }
}

class SupplyChainTradeTransactionType extends XmlNode {
  SupplyChainTradeTransactionType({
    required this.includedSupplyChainTradeLineItem,
    required this.applicableHeaderTradeAgreement,
    required this.applicableHeaderTradeDelivery,
    required this.applicableHeaderTradeSettlement,
  });

  final List<SupplyChainTradeLineItemType> includedSupplyChainTradeLineItem;

  final HeaderTradeAgreementType applicableHeaderTradeAgreement;

  final HeaderTradeDeliveryType applicableHeaderTradeDelivery;

  final HeaderTradeSettlementType applicableHeaderTradeSettlement;

  @override
  toXml(XmlBuilder xmlBuilder) {
    for (SupplyChainTradeLineItemType value
        in includedSupplyChainTradeLineItem) {
      xmlBuilder.element("IncludedSupplyChainTradeLineItem",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        value.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("ApplicableHeaderTradeAgreement",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      applicableHeaderTradeAgreement.toXml(xmlBuilder);
    });
    xmlBuilder.element("ApplicableHeaderTradeDelivery",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      applicableHeaderTradeDelivery.toXml(xmlBuilder);
    });
    xmlBuilder.element("ApplicableHeaderTradeSettlement",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      applicableHeaderTradeSettlement.toXml(xmlBuilder);
    });
  }
}

class TaxRegistrationType extends XmlNode {
  TaxRegistrationType({required this.iD});

  final IDType iD;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
  }
}

class TradeAccountingAccountType extends XmlNode {
  TradeAccountingAccountType({
    required this.iD,
    this.typeCode,
  });

  final IDType iD;

  final AccountingAccountTypeCodeType? typeCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
    if (typeCode != null) {
      xmlBuilder.element("TypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        typeCode!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeAddressType extends XmlNode {
  TradeAddressType({
    this.postcodeCode,
    this.lineOne,
    this.lineTwo,
    this.lineThree,
    this.cityName,
    required this.countryID,
    this.countrySubDivisionName,
  });

  final CodeType? postcodeCode;

  final TextType? lineOne;

  final TextType? lineTwo;

  final TextType? lineThree;

  final TextType? cityName;

  final CountryIDType countryID;

  final TextType? countrySubDivisionName;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (postcodeCode != null) {
      xmlBuilder.element("PostcodeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        postcodeCode!.toXml(xmlBuilder);
      });
    }
    if (lineOne != null) {
      xmlBuilder.element("LineOne",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineOne!.toXml(xmlBuilder);
      });
    }
    if (lineTwo != null) {
      xmlBuilder.element("LineTwo",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineTwo!.toXml(xmlBuilder);
      });
    }
    if (lineThree != null) {
      xmlBuilder.element("LineThree",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineThree!.toXml(xmlBuilder);
      });
    }
    if (cityName != null) {
      xmlBuilder.element("CityName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        cityName!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("CountryID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      countryID.toXml(xmlBuilder);
    });
    if (countrySubDivisionName != null) {
      xmlBuilder.element("CountrySubDivisionName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        countrySubDivisionName!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeAllowanceChargeType extends XmlNode {
  TradeAllowanceChargeType({
    required this.chargeIndicator,
    this.sequenceNumeric,
    this.calculationPercent,
    this.basisAmount,
    this.basisQuantity,
    required this.actualAmount,
    this.reasonCode,
    this.reason,
    this.categoryTradeTax,
  });

  final IndicatorType chargeIndicator;

  final NumericType? sequenceNumeric;

  final PercentType? calculationPercent;

  final AmountType? basisAmount;

  final QuantityType? basisQuantity;

  final AmountType actualAmount;

  final AllowanceChargeReasonCodeType? reasonCode;

  final TextType? reason;

  final TradeTaxType? categoryTradeTax;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ChargeIndicator",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      chargeIndicator.toXml(xmlBuilder);
    });
    if (sequenceNumeric != null) {
      xmlBuilder.element("SequenceNumeric",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sequenceNumeric!.toXml(xmlBuilder);
      });
    }
    if (calculationPercent != null) {
      xmlBuilder.element("CalculationPercent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        calculationPercent!.toXml(xmlBuilder);
      });
    }
    if (basisAmount != null) {
      xmlBuilder.element("BasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisAmount!.toXml(xmlBuilder);
      });
    }
    if (basisQuantity != null) {
      xmlBuilder.element("BasisQuantity",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisQuantity!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("ActualAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      actualAmount.toXml(xmlBuilder);
    });
    if (reasonCode != null) {
      xmlBuilder.element("ReasonCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        reasonCode!.toXml(xmlBuilder);
      });
    }
    if (reason != null) {
      xmlBuilder.element("Reason",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        reason!.toXml(xmlBuilder);
      });
    }
    if (categoryTradeTax != null) {
      xmlBuilder.element("CategoryTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        categoryTradeTax!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeContactType extends XmlNode {
  TradeContactType({
    this.personName,
    this.departmentName,
    this.typeCode,
    this.telephoneUniversalCommunication,
    this.faxUniversalCommunication,
    this.emailURIUniversalCommunication,
  });

  final TextType? personName;

  final TextType? departmentName;

  final ContactTypeCodeType? typeCode;

  final UniversalCommunicationType? telephoneUniversalCommunication;

  final UniversalCommunicationType? faxUniversalCommunication;

  final UniversalCommunicationType? emailURIUniversalCommunication;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (personName != null) {
      xmlBuilder.element("PersonName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        personName!.toXml(xmlBuilder);
      });
    }
    if (departmentName != null) {
      xmlBuilder.element("DepartmentName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        departmentName!.toXml(xmlBuilder);
      });
    }
    if (typeCode != null) {
      xmlBuilder.element("TypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        typeCode!.toXml(xmlBuilder);
      });
    }
    if (telephoneUniversalCommunication != null) {
      xmlBuilder.element("TelephoneUniversalCommunication",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        telephoneUniversalCommunication!.toXml(xmlBuilder);
      });
    }
    if (faxUniversalCommunication != null) {
      xmlBuilder.element("FaxUniversalCommunication",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        faxUniversalCommunication!.toXml(xmlBuilder);
      });
    }
    if (emailURIUniversalCommunication != null) {
      xmlBuilder.element("EmailURIUniversalCommunication",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        emailURIUniversalCommunication!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeCountryType extends XmlNode {
  TradeCountryType({required this.iD});

  final CountryIDType iD;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
  }
}

class TradeCurrencyExchangeType extends XmlNode {
  TradeCurrencyExchangeType({
    required this.sourceCurrencyCode,
    required this.targetCurrencyCode,
    required this.conversionRate,
    this.conversionRateDateTime,
  });

  final CurrencyCodeType sourceCurrencyCode;

  final CurrencyCodeType targetCurrencyCode;

  final RateType conversionRate;

  final DateTimeType? conversionRateDateTime;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("SourceCurrencyCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      sourceCurrencyCode.toXml(xmlBuilder);
    });
    xmlBuilder.element("TargetCurrencyCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      targetCurrencyCode.toXml(xmlBuilder);
    });
    xmlBuilder.element("ConversionRate",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      conversionRate.toXml(xmlBuilder);
    });
    if (conversionRateDateTime != null) {
      xmlBuilder.element("ConversionRateDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        conversionRateDateTime!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeDeliveryTermsType extends XmlNode {
  TradeDeliveryTermsType({required this.deliveryTypeCode});

  final DeliveryTermsCodeType deliveryTypeCode;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("DeliveryTypeCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      deliveryTypeCode.toXml(xmlBuilder);
    });
  }
}

class TradePartyType extends XmlNode {
  TradePartyType({
    this.iD,
    this.globalID,
    this.name,
    this.roleCode,
    this.description,
    this.specifiedLegalOrganization,
    this.definedTradeContact,
    this.postalTradeAddress,
    this.uRIUniversalCommunication,
    this.specifiedTaxRegistration,
  });

  final List<IDType>? iD;

  final List<IDType>? globalID;

  final TextType? name;

  final PartyRoleCodeType? roleCode;

  final TextType? description;

  final LegalOrganizationType? specifiedLegalOrganization;

  final List<TradeContactType>? definedTradeContact;

  final TradeAddressType? postalTradeAddress;

  final UniversalCommunicationType? uRIUniversalCommunication;

  final List<TaxRegistrationType>? specifiedTaxRegistration;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (iD != null) {
      for (IDType value in iD!) {
        xmlBuilder.element("ID",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (globalID != null) {
      for (IDType value in globalID!) {
        xmlBuilder.element("GlobalID",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (name != null) {
      xmlBuilder.element("Name",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        name!.toXml(xmlBuilder);
      });
    }
    if (roleCode != null) {
      xmlBuilder.element("RoleCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        roleCode!.toXml(xmlBuilder);
      });
    }
    if (description != null) {
      xmlBuilder.element("Description",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        description!.toXml(xmlBuilder);
      });
    }
    if (specifiedLegalOrganization != null) {
      xmlBuilder.element("SpecifiedLegalOrganization",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        specifiedLegalOrganization!.toXml(xmlBuilder);
      });
    }
    if (definedTradeContact != null) {
      for (TradeContactType value in definedTradeContact!) {
        xmlBuilder.element("DefinedTradeContact",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (postalTradeAddress != null) {
      xmlBuilder.element("PostalTradeAddress",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        postalTradeAddress!.toXml(xmlBuilder);
      });
    }
    if (uRIUniversalCommunication != null) {
      xmlBuilder.element("URIUniversalCommunication",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        uRIUniversalCommunication!.toXml(xmlBuilder);
      });
    }
    if (specifiedTaxRegistration != null) {
      for (TaxRegistrationType value in specifiedTaxRegistration!) {
        xmlBuilder.element("SpecifiedTaxRegistration",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class TradePaymentDiscountTermsType extends XmlNode {
  TradePaymentDiscountTermsType({
    this.basisDateTime,
    this.basisPeriodMeasure,
    this.basisAmount,
    this.calculationPercent,
    this.actualDiscountAmount,
  });

  final DateTimeType? basisDateTime;

  final MeasureType? basisPeriodMeasure;

  final AmountType? basisAmount;

  final PercentType? calculationPercent;

  final AmountType? actualDiscountAmount;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (basisDateTime != null) {
      xmlBuilder.element("BasisDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisDateTime!.toXml(xmlBuilder);
      });
    }
    if (basisPeriodMeasure != null) {
      xmlBuilder.element("BasisPeriodMeasure",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisPeriodMeasure!.toXml(xmlBuilder);
      });
    }
    if (basisAmount != null) {
      xmlBuilder.element("BasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisAmount!.toXml(xmlBuilder);
      });
    }
    if (calculationPercent != null) {
      xmlBuilder.element("CalculationPercent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        calculationPercent!.toXml(xmlBuilder);
      });
    }
    if (actualDiscountAmount != null) {
      xmlBuilder.element("ActualDiscountAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        actualDiscountAmount!.toXml(xmlBuilder);
      });
    }
  }
}

class TradePaymentPenaltyTermsType extends XmlNode {
  TradePaymentPenaltyTermsType({
    this.basisDateTime,
    this.basisPeriodMeasure,
    this.basisAmount,
    this.calculationPercent,
    this.actualPenaltyAmount,
  });

  final DateTimeType? basisDateTime;

  final MeasureType? basisPeriodMeasure;

  final AmountType? basisAmount;

  final PercentType? calculationPercent;

  final AmountType? actualPenaltyAmount;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (basisDateTime != null) {
      xmlBuilder.element("BasisDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisDateTime!.toXml(xmlBuilder);
      });
    }
    if (basisPeriodMeasure != null) {
      xmlBuilder.element("BasisPeriodMeasure",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisPeriodMeasure!.toXml(xmlBuilder);
      });
    }
    if (basisAmount != null) {
      xmlBuilder.element("BasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisAmount!.toXml(xmlBuilder);
      });
    }
    if (calculationPercent != null) {
      xmlBuilder.element("CalculationPercent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        calculationPercent!.toXml(xmlBuilder);
      });
    }
    if (actualPenaltyAmount != null) {
      xmlBuilder.element("ActualPenaltyAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        actualPenaltyAmount!.toXml(xmlBuilder);
      });
    }
  }
}

class TradePaymentTermsType extends XmlNode {
  TradePaymentTermsType({
    this.description,
    this.dueDateDateTime,
    this.directDebitMandateID,
    this.partialPaymentAmount,
    this.applicableTradePaymentPenaltyTerms,
    this.applicableTradePaymentDiscountTerms,
    this.payeeTradeParty,
  });

  final TextType? description;

  final DateTimeType? dueDateDateTime;

  final IDType? directDebitMandateID;

  final AmountType? partialPaymentAmount;

  final TradePaymentPenaltyTermsType? applicableTradePaymentPenaltyTerms;

  final TradePaymentDiscountTermsType? applicableTradePaymentDiscountTerms;

  final TradePartyType? payeeTradeParty;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (description != null) {
      xmlBuilder.element("Description",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        description!.toXml(xmlBuilder);
      });
    }
    if (dueDateDateTime != null) {
      xmlBuilder.element("DueDateDateTime",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        dueDateDateTime!.toXml(xmlBuilder);
      });
    }
    if (directDebitMandateID != null) {
      xmlBuilder.element("DirectDebitMandateID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        directDebitMandateID!.toXml(xmlBuilder);
      });
    }
    if (partialPaymentAmount != null) {
      xmlBuilder.element("PartialPaymentAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        partialPaymentAmount!.toXml(xmlBuilder);
      });
    }
    if (applicableTradePaymentPenaltyTerms != null) {
      xmlBuilder.element("ApplicableTradePaymentPenaltyTerms",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        applicableTradePaymentPenaltyTerms!.toXml(xmlBuilder);
      });
    }
    if (applicableTradePaymentDiscountTerms != null) {
      xmlBuilder.element("ApplicableTradePaymentDiscountTerms",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        applicableTradePaymentDiscountTerms!.toXml(xmlBuilder);
      });
    }
    if (payeeTradeParty != null) {
      xmlBuilder.element("PayeeTradeParty",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payeeTradeParty!.toXml(xmlBuilder);
      });
    }
  }
}

class TradePriceType extends XmlNode {
  TradePriceType({
    required this.chargeAmount,
    this.basisQuantity,
    this.appliedTradeAllowanceCharge,
    this.includedTradeTax,
  });

  final AmountType chargeAmount;

  final QuantityType? basisQuantity;

  final List<TradeAllowanceChargeType>? appliedTradeAllowanceCharge;

  final TradeTaxType? includedTradeTax;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ChargeAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      chargeAmount.toXml(xmlBuilder);
    });
    if (basisQuantity != null) {
      xmlBuilder.element("BasisQuantity",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisQuantity!.toXml(xmlBuilder);
      });
    }
    if (appliedTradeAllowanceCharge != null) {
      for (TradeAllowanceChargeType value in appliedTradeAllowanceCharge!) {
        xmlBuilder.element("AppliedTradeAllowanceCharge",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (includedTradeTax != null) {
      xmlBuilder.element("IncludedTradeTax",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        includedTradeTax!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeProductInstanceType extends XmlNode {
  TradeProductInstanceType({
    this.batchID,
    this.supplierAssignedSerialID,
  });

  final IDType? batchID;

  final IDType? supplierAssignedSerialID;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (batchID != null) {
      xmlBuilder.element("BatchID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        batchID!.toXml(xmlBuilder);
      });
    }
    if (supplierAssignedSerialID != null) {
      xmlBuilder.element("SupplierAssignedSerialID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        supplierAssignedSerialID!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeProductType extends XmlNode {
  TradeProductType({
    this.iD,
    this.globalID,
    this.sellerAssignedID,
    this.buyerAssignedID,
    this.industryAssignedID,
    this.modelID,
    required this.name,
    this.description,
    this.batchID,
    this.brandName,
    this.modelName,
    this.applicableProductCharacteristic,
    this.designatedProductClassification,
    this.individualTradeProductInstance,
    this.originTradeCountry,
    this.includedReferencedProduct,
  });

  final IDType? iD;

  final IDType? globalID;

  final IDType? sellerAssignedID;

  final IDType? buyerAssignedID;

  final IDType? industryAssignedID;

  final IDType? modelID;

  final TextType name;

  final TextType? description;

  final List<IDType>? batchID;

  final TextType? brandName;

  final TextType? modelName;

  final List<ProductCharacteristicType>? applicableProductCharacteristic;

  final List<ProductClassificationType>? designatedProductClassification;

  final List<TradeProductInstanceType>? individualTradeProductInstance;

  final TradeCountryType? originTradeCountry;

  final List<ReferencedProductType>? includedReferencedProduct;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (iD != null) {
      xmlBuilder.element("ID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        iD!.toXml(xmlBuilder);
      });
    }
    if (globalID != null) {
      xmlBuilder.element("GlobalID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        globalID!.toXml(xmlBuilder);
      });
    }
    if (sellerAssignedID != null) {
      xmlBuilder.element("SellerAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        sellerAssignedID!.toXml(xmlBuilder);
      });
    }
    if (buyerAssignedID != null) {
      xmlBuilder.element("BuyerAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        buyerAssignedID!.toXml(xmlBuilder);
      });
    }
    if (industryAssignedID != null) {
      xmlBuilder.element("IndustryAssignedID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        industryAssignedID!.toXml(xmlBuilder);
      });
    }
    if (modelID != null) {
      xmlBuilder.element("ModelID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        modelID!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("Name",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      name.toXml(xmlBuilder);
    });
    if (description != null) {
      xmlBuilder.element("Description",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        description!.toXml(xmlBuilder);
      });
    }
    if (batchID != null) {
      for (IDType value in batchID!) {
        xmlBuilder.element("BatchID",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (brandName != null) {
      xmlBuilder.element("BrandName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        brandName!.toXml(xmlBuilder);
      });
    }
    if (modelName != null) {
      xmlBuilder.element("ModelName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        modelName!.toXml(xmlBuilder);
      });
    }
    if (applicableProductCharacteristic != null) {
      for (ProductCharacteristicType value
          in applicableProductCharacteristic!) {
        xmlBuilder.element("ApplicableProductCharacteristic",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (designatedProductClassification != null) {
      for (ProductClassificationType value
          in designatedProductClassification!) {
        xmlBuilder.element("DesignatedProductClassification",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (individualTradeProductInstance != null) {
      for (TradeProductInstanceType value in individualTradeProductInstance!) {
        xmlBuilder.element("IndividualTradeProductInstance",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (originTradeCountry != null) {
      xmlBuilder.element("OriginTradeCountry",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        originTradeCountry!.toXml(xmlBuilder);
      });
    }
    if (includedReferencedProduct != null) {
      for (ReferencedProductType value in includedReferencedProduct!) {
        xmlBuilder.element("IncludedReferencedProduct",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
  }
}

class TradeSettlementFinancialCardType extends XmlNode {
  TradeSettlementFinancialCardType({
    required this.iD,
    this.cardholderName,
  });

  final IDType iD;

  final TextType? cardholderName;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ID",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      iD.toXml(xmlBuilder);
    });
    if (cardholderName != null) {
      xmlBuilder.element("CardholderName",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        cardholderName!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeSettlementHeaderMonetarySummationType extends XmlNode {
  TradeSettlementHeaderMonetarySummationType({
    required this.lineTotalAmount,
    this.chargeTotalAmount,
    this.allowanceTotalAmount,
    required this.taxBasisTotalAmount,
    this.taxTotalAmount,
    this.roundingAmount,
    required this.grandTotalAmount,
    this.totalPrepaidAmount,
    required this.duePayableAmount,
  });

  final AmountType lineTotalAmount;

  final AmountType? chargeTotalAmount;

  final AmountType? allowanceTotalAmount;

  final AmountType taxBasisTotalAmount;

  final List<AmountType>? taxTotalAmount;

  final AmountType? roundingAmount;

  final AmountType grandTotalAmount;

  final AmountType? totalPrepaidAmount;

  final AmountType duePayableAmount;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("LineTotalAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      lineTotalAmount.toXml(xmlBuilder);
    });
    if (chargeTotalAmount != null) {
      xmlBuilder.element("ChargeTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        chargeTotalAmount!.toXml(xmlBuilder);
      });
    }
    if (allowanceTotalAmount != null) {
      xmlBuilder.element("AllowanceTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        allowanceTotalAmount!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("TaxBasisTotalAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      taxBasisTotalAmount.toXml(xmlBuilder);
    });
    if (taxTotalAmount != null) {
      for (AmountType value in taxTotalAmount!) {
        xmlBuilder.element("TaxTotalAmount",
            namespace:
                "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
            nest: () {
          value.toXml(xmlBuilder);
        });
      }
    }
    if (roundingAmount != null) {
      xmlBuilder.element("RoundingAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        roundingAmount!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("GrandTotalAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      grandTotalAmount.toXml(xmlBuilder);
    });
    if (totalPrepaidAmount != null) {
      xmlBuilder.element("TotalPrepaidAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        totalPrepaidAmount!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("DuePayableAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      duePayableAmount.toXml(xmlBuilder);
    });
  }
}

class TradeSettlementLineMonetarySummationType extends XmlNode {
  TradeSettlementLineMonetarySummationType({
    required this.lineTotalAmount,
    this.chargeTotalAmount,
    this.allowanceTotalAmount,
    this.taxTotalAmount,
    this.grandTotalAmount,
    this.totalAllowanceChargeAmount,
  });

  final AmountType lineTotalAmount;

  final AmountType? chargeTotalAmount;

  final AmountType? allowanceTotalAmount;

  final AmountType? taxTotalAmount;

  final AmountType? grandTotalAmount;

  final AmountType? totalAllowanceChargeAmount;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("LineTotalAmount",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      lineTotalAmount.toXml(xmlBuilder);
    });
    if (chargeTotalAmount != null) {
      xmlBuilder.element("ChargeTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        chargeTotalAmount!.toXml(xmlBuilder);
      });
    }
    if (allowanceTotalAmount != null) {
      xmlBuilder.element("AllowanceTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        allowanceTotalAmount!.toXml(xmlBuilder);
      });
    }
    if (taxTotalAmount != null) {
      xmlBuilder.element("TaxTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        taxTotalAmount!.toXml(xmlBuilder);
      });
    }
    if (grandTotalAmount != null) {
      xmlBuilder.element("GrandTotalAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        grandTotalAmount!.toXml(xmlBuilder);
      });
    }
    if (totalAllowanceChargeAmount != null) {
      xmlBuilder.element("TotalAllowanceChargeAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        totalAllowanceChargeAmount!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeSettlementPaymentMeansType extends XmlNode {
  TradeSettlementPaymentMeansType({
    required this.typeCode,
    this.information,
    this.applicableTradeSettlementFinancialCard,
    this.payerPartyDebtorFinancialAccount,
    this.payeePartyCreditorFinancialAccount,
    this.payeeSpecifiedCreditorFinancialInstitution,
  });

  final PaymentMeansCodeType typeCode;

  final TextType? information;

  final TradeSettlementFinancialCardType?
      applicableTradeSettlementFinancialCard;

  final DebtorFinancialAccountType? payerPartyDebtorFinancialAccount;

  final CreditorFinancialAccountType? payeePartyCreditorFinancialAccount;

  final CreditorFinancialInstitutionType?
      payeeSpecifiedCreditorFinancialInstitution;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("TypeCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      typeCode.toXml(xmlBuilder);
    });
    if (information != null) {
      xmlBuilder.element("Information",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        information!.toXml(xmlBuilder);
      });
    }
    if (applicableTradeSettlementFinancialCard != null) {
      xmlBuilder.element("ApplicableTradeSettlementFinancialCard",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        applicableTradeSettlementFinancialCard!.toXml(xmlBuilder);
      });
    }
    if (payerPartyDebtorFinancialAccount != null) {
      xmlBuilder.element("PayerPartyDebtorFinancialAccount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payerPartyDebtorFinancialAccount!.toXml(xmlBuilder);
      });
    }
    if (payeePartyCreditorFinancialAccount != null) {
      xmlBuilder.element("PayeePartyCreditorFinancialAccount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payeePartyCreditorFinancialAccount!.toXml(xmlBuilder);
      });
    }
    if (payeeSpecifiedCreditorFinancialInstitution != null) {
      xmlBuilder.element("PayeeSpecifiedCreditorFinancialInstitution",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        payeeSpecifiedCreditorFinancialInstitution!.toXml(xmlBuilder);
      });
    }
  }
}

class TradeTaxType extends XmlNode {
  TradeTaxType({
    this.calculatedAmount,
    required this.typeCode,
    this.exemptionReason,
    this.basisAmount,
    this.lineTotalBasisAmount,
    this.allowanceChargeBasisAmount,
    required this.categoryCode,
    this.exemptionReasonCode,
    this.taxPointDate,
    this.dueDateTypeCode,
    this.rateApplicablePercent,
  });

  final AmountType? calculatedAmount;

  final TaxTypeCodeType typeCode;

  final TextType? exemptionReason;

  final AmountType? basisAmount;

  final AmountType? lineTotalBasisAmount;

  final AmountType? allowanceChargeBasisAmount;

  final TaxCategoryCodeType categoryCode;

  final CodeType? exemptionReasonCode;

  final DateType? taxPointDate;

  final TimeReferenceCodeType? dueDateTypeCode;

  final PercentType? rateApplicablePercent;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (calculatedAmount != null) {
      xmlBuilder.element("CalculatedAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        calculatedAmount!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("TypeCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      typeCode.toXml(xmlBuilder);
    });
    if (exemptionReason != null) {
      xmlBuilder.element("ExemptionReason",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        exemptionReason!.toXml(xmlBuilder);
      });
    }
    if (basisAmount != null) {
      xmlBuilder.element("BasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        basisAmount!.toXml(xmlBuilder);
      });
    }
    if (lineTotalBasisAmount != null) {
      xmlBuilder.element("LineTotalBasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        lineTotalBasisAmount!.toXml(xmlBuilder);
      });
    }
    if (allowanceChargeBasisAmount != null) {
      xmlBuilder.element("AllowanceChargeBasisAmount",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        allowanceChargeBasisAmount!.toXml(xmlBuilder);
      });
    }
    xmlBuilder.element("CategoryCode",
        namespace:
            "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
        nest: () {
      categoryCode.toXml(xmlBuilder);
    });
    if (exemptionReasonCode != null) {
      xmlBuilder.element("ExemptionReasonCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        exemptionReasonCode!.toXml(xmlBuilder);
      });
    }
    if (taxPointDate != null) {
      xmlBuilder.element("TaxPointDate",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        taxPointDate!.toXml(xmlBuilder);
      });
    }
    if (dueDateTypeCode != null) {
      xmlBuilder.element("DueDateTypeCode",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        dueDateTypeCode!.toXml(xmlBuilder);
      });
    }
    if (rateApplicablePercent != null) {
      xmlBuilder.element("RateApplicablePercent",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        rateApplicablePercent!.toXml(xmlBuilder);
      });
    }
  }
}

class UniversalCommunicationType extends XmlNode {
  UniversalCommunicationType({
    this.uRIID,
    this.completeNumber,
  });

  final IDType? uRIID;

  final TextType? completeNumber;

  @override
  toXml(XmlBuilder xmlBuilder) {
    if (uRIID != null) {
      xmlBuilder.element("URIID",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        uRIID!.toXml(xmlBuilder);
      });
    }
    if (completeNumber != null) {
      xmlBuilder.element("CompleteNumber",
          namespace:
              "urn:un:unece:uncefact:data:standard:ReusableAggregateBusinessInformationEntity:100",
          nest: () {
        completeNumber!.toXml(xmlBuilder);
      });
    }
  }
}

class CrossIndustryInvoiceType extends XmlNode {
  CrossIndustryInvoiceType({
    required this.exchangedDocumentContext,
    required this.exchangedDocument,
    required this.supplyChainTradeTransaction,
  });

  final ExchangedDocumentContextType exchangedDocumentContext;

  final ExchangedDocumentType exchangedDocument;

  final SupplyChainTradeTransactionType supplyChainTradeTransaction;

  @override
  toXml(XmlBuilder xmlBuilder) {
    xmlBuilder.element("ExchangedDocumentContext",
        namespace:
            "urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100",
        nest: () {
      exchangedDocumentContext.toXml(xmlBuilder);
    });
    xmlBuilder.element("ExchangedDocument",
        namespace:
            "urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100",
        nest: () {
      exchangedDocument.toXml(xmlBuilder);
    });
    xmlBuilder.element("SupplyChainTradeTransaction",
        namespace:
            "urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:100",
        nest: () {
      supplyChainTradeTransaction.toXml(xmlBuilder);
    });
  }
}
