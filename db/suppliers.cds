namespace com.sap.suppliers;
using { managed } from '@sap/cds/common';

entity SuppliersFact : managed {
  key SupplierId                    : String(50);
      SMVendorID                    : String(255);
      SupplierName                  : String(255);
      SupplierPublicName            : String(1000);
      ShortDescription              : String(1000);
      Alias1                        : String(512);
      Alias2                        : String(512);
      LegalName                     : String(256);
      StockSymbol                   : String(10);
      BackupWithholdingExempt       : Boolean;
      ParentSupplierId              : String(50);
      SupplierLocationId            : String(50);
      SourceSystem                  : String(100);
      IsOneTimeVendorShell          : Boolean;
      IsHardLimit                   : Boolean;
      MaxInvoiceCount               : DecimalFloat;
      StreetAddress                 : String(255);
      PostalCode                    : String(50);
      OrganizationType              : String(64);
      ApprovalStatus                : String(25);
      IsSupplier                    : Boolean;
      IsCustomer                    : Boolean;
      StateOfIncorporation          : String(50);
      ContactFirstName              : String(256);
      ContactLastName               : String(256);
      ContactPhoneNumber            : String(50);
      ContactEmail                  : String(256);
      PreferredLanguage             : String(50);
      FaxNumber                     : String(50);
      OrderRoutingType              : String(25);
      DUNSNumber                    : String(12);
      ANNumber                      : String(50);
      PaymentType                   : String(50);
      ProcurementUnitParent         : String(50);
      GlobalLocationNumber          : String(128);
      UsTIN                         : String(128);
      StateTIN                      : String(128);
      RegionalTIN                   : String(128);
      VatID                         : String(128);
      CommonSupplierName            : String(255);
      CommonSupplierId              : String(64);
      City                          : String(50);
      State                         : String(50);
      Country                       : String(50);
      DEInSDN                       : Boolean;
      Diversity                     : Boolean;
      MinorityOwned                 : Boolean;
      WomanOwned                    : Boolean;
      VeteranOwned                  : Boolean;
      DiversitySBA8A                : Boolean;
      DiversityHUBZone              : Boolean;
      DiversitySDB                  : Boolean;
      DiversityDVO                  : Boolean;
      DiversityEthnicity            : String(50);
      DiversityGLBTOwned            : Boolean;
      DiversityDisabledOwned        : Boolean;
      DiversityLaborSurplus         : Boolean;
      DiversityHBCU                 : Boolean;
      DiversitySmallBusiness        : Boolean;
      DiversityGreen                : Boolean;
      VietnamVO                     : Boolean;
      MinorityAsian                 : Boolean;
      MinorityBlack                 : Boolean;
      MinorityNA                    : Boolean;
      MinorityHispanic              : Boolean;
      MinorityIS                    : Boolean;
      MinorityOther                 : Boolean;
      CertifiedDiversity            : Boolean;
      CertifiedMinorityOwned        : Boolean;
      CertifiedWomanOwned           : Boolean;
      CertifiedVeteranOwned         : Boolean;
      CertifiedSBA8A                : Boolean;
      CertifiedHUBZone              : Boolean;
      CertifiedSDB                  : Boolean;
      CertifiedEthnicity            : String(50);
      CertifiedDisabledOwned        : Boolean;
      CertifiedDisadvantaged        : Boolean;
      DiversityEnterprise           : Boolean;
      MinorityOwnedEnterprise       : Boolean;
      WomanOwnedEnterprise          : Boolean;
      VeteranOwnedEnterprise        : Boolean;
      DVOEnterprise                 : Boolean;
      EthnicityEnterprise           : String(50);
      DisadvantagedEnterprise       : Boolean;
      NumberOfEmployees             : DecimalFloat;
      YearFounded                   : DecimalFloat;
      DEConfidence                  : String(10);
      DESupplierMethod              : String(10);
      DETradeStyle1                 : String(300);
      DETradeStyle2                 : String(300);
      DEBusinessStatus              : String(100);
      DELinkageType                 : String(100);
      DEAltGlobalUltimateName       : String(300);
      DELegalGlobalUltimateName     : String(300);
      DESupplierExplanation         : String(100);
      DESupplierScore               : DecimalFloat;
      DESupplierName                : String(255);
      DESupplierId                  : String(255);
      DEStreetAddress               : String(512);
      DEPostalCode                  : String(64);
      DEPhoneNumber                 : String(64);
      DEHierarchyCode               : DecimalFloat;
      DEFederalTaxId                : String(20);
      DENationalId                  : String(24);
      DEYearStarted                 : DecimalFloat;
      DESupplierParentName          : String(255);
      DESupplierParentId            : String(255);
      DEDomesticUltimateName        : String(255);
      DEDomesticUltimateID          : String(255);
      DEGlobalUltimateName          : String(255);
      DEGlobalUltimateID            : String(255);
      DEPreviousParentName          : String(255);
      DEPreviousParentID            : String(255);
      DEPreviousParentChangeDate    : String(50);
      DECity                        : String(50);
      DEState                       : String(50);
      DECountry                     : String(50);
      SupplierType                  : String(50);
      SupplierNameRank              : String(255);
      SupplierIdRank                : String(255);
      DECreditRating                : String(255);
      DEPaymentTrends               : String(255);
      DERevenueRating               : String(255);
      DEDiversity                   : Boolean;
      DEDiversityStatus             : DecimalFloat;
      DEDiversityMinorityOwned      : Boolean;
      DEDiversityWomanOwned         : Boolean;
      DEDiversityVeteranOwned       : Boolean;
      DEDiversitySBA8A              : Boolean;
      DEDiversityHubZone            : Boolean;
      DEDiversitySDB                : Boolean;
      DEDiversityDVO                : Boolean;
      DEDiversityEthnicity          : String(50);
      DEDiversityGLBTOwned          : Boolean;
      DEDiversityDisabledOwned      : Boolean;
      DEDiversityDisadvantaged      : Boolean;
      DEDiversityLaborSurplus       : Boolean;
      DEDiversityHBCU               : Boolean;
      DEDiversitySmallBusiness      : Boolean;
      DEDiversityGreen              : Boolean;
      DECertifiedDiversity          : Boolean;
      DECertifiedDiversityStatus    : DecimalFloat;
      DECertifiedMinorityOwned      : Boolean;
      DECertifiedWomanOwned         : Boolean;
      DECertifiedVeteranOwned       : Boolean;
      DECertifiedSBA8A              : Boolean;
      DECertifiedHubZone            : Boolean;
      DECertifiedSDB                : Boolean;
      DECertifiedDVO                : Boolean;
      DECertifiedEthnicity          : String(50);
      DECertifiedGLBTOwned          : Boolean;
      DECertifiedDisabledOwned      : Boolean;
      DECertifiedDisadvantaged      : Boolean;
      DECertifiedLaborSurplus       : Boolean;
      DECertifiedHBCU               : Boolean;
      DECertifiedSmallBusiness      : Boolean;
      DEDiversityEnterprise         : Boolean;
      DEDiversityStatusEnterprise   : DecimalFloat;
      DEMinorityOwnedEnterprise     : Boolean;
      DEWomanOwnedEnterprise        : Boolean;
      DEVeteranOwnedEnterprise      : Boolean;
      DESBA8AEnterprise             : Boolean;
      DEHubZoneEnterprise           : Boolean;
      DESDBEnterprise               : Boolean;
      DEDVOEnterprise               : Boolean;
      DEEthnicityEnterprise         : String(50);
      DEGLBTOwnedEnterprise         : Boolean;
      DEDisabledOwnedEnterprise     : Boolean;
      DEDisadvantagedEnterprise     : Boolean;
      DELaborSurplusEnterprise      : Boolean;
      DEHBCUEnterprise              : Boolean;
      DESmallBusinessEnterprise     : Boolean;
      DEPublicOwnedCode             : String(50);
      DELegalStatusCode             : String(128);
      DELocationStatusCode          : String(128);
      DEHeadquarter                 : Boolean;
      DESubsidiary                  : Boolean;
      DECongressionalDistrict       : String(50);
      DENationalIdType              : String(50);
      DEISOIndicator                : String(50);
      DEISOLevel                    : String(10);
      DEFaxNumber                   : String(50);
      DEEmployeeRating              : String(20);
      DESERScore                    : DecimalFloat;
      DESERScoreCategory            : String(20);
      DEFSSScore                    : DecimalFloat;
      DEFSSPercentile               : DecimalFloat;
      DEFSSClass                    : DecimalFloat;
      DECSSScore                    : DecimalFloat;
      DECSSPercentile               : DecimalFloat;
      DECSSClass                    : DecimalFloat;
      SupplierNameL1                : String(255);
      SupplierNameL2                : String(255);
      SupplierIdL1                  : String(50);
      SupplierIdL2                  : String(50);

      Realm                         : String(25);
}