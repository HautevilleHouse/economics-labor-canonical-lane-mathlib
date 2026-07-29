import EconomicsLaborCanonicalLaneLean.LaborAnalyticProof

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure UtilityMaximizationEvidenceTerms {U : UtilityMaximizationPackage} (C : UtilityMaximizationCertificate U) where
  preferenceCompletenessClosed : C.preferenceCompleteness
  preferenceTransitivityClosed : C.preferenceTransitivity
  utilityContinuityClosed : C.utilityContinuity
  optimalChoiceClosed : C.optimalChoice
  utilityClosed : UtilityMaximizationClosed U

def UtilityMaximizationCertificate.evidenceTerms {U : UtilityMaximizationPackage} (C : UtilityMaximizationCertificate U) : UtilityMaximizationEvidenceTerms C :=
  { preferenceCompletenessClosed := C.preferenceCompletenessClosed,
    preferenceTransitivityClosed := C.preferenceTransitivityClosed,
    utilityContinuityClosed := C.utilityContinuityClosed,
    optimalChoiceClosed := C.optimalChoiceClosed,
    utilityClosed := utility_maximization_closed_from_evidence U C.utilityEvidence
  }

structure LaborSupplyEvidenceTerms {L : LaborSupplyPackage} (C : LaborSupplyCertificate L) where
  wageOfferCurveClosed : C.wageOfferCurve
  reservationWageClosed : C.reservationWage
  laborSupplyClosed : LaborSupplyClosed L

def LaborSupplyCertificate.evidenceTerms {L : LaborSupplyPackage} (C : LaborSupplyCertificate L) : LaborSupplyEvidenceTerms C :=
  { wageOfferCurveClosed := C.wageOfferCurveClosed,
    reservationWageClosed := C.reservationWageClosed,
    laborSupplyClosed := labor_supply_closed_from_evidence L C.laborSupplyEvidence
  }

structure LaborDemandEvidenceTerms {D : LaborDemandPackage} (C : LaborDemandCertificate D) where
  marginalProductClosed : C.marginalProduct
  profitMaximizationClosed : C.profitMaximization
  laborDemandClosed : LaborDemandClosed D

def LaborDemandCertificate.evidenceTerms {D : LaborDemandPackage} (C : LaborDemandCertificate D) : LaborDemandEvidenceTerms C :=
  { marginalProductClosed := C.marginalProductClosed,
    profitMaximizationClosed := C.profitMaximizationClosed,
    laborDemandClosed := labor_demand_closed_from_evidence D C.laborDemandEvidence
  }

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
