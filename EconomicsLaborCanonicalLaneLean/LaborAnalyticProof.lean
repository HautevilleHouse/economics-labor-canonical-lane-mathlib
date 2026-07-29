import EconomicsLaborCanonicalLaneLean.LaborRoute

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure UtilityMaximizationCertificate (U : UtilityMaximizationPackage) where
  preferenceCompleteness : Prop
  preferenceTransitivity : Prop
  utilityContinuity : Prop
  optimalChoice : Prop
  preferenceCompletenessClosed : preferenceCompleteness
  preferenceTransitivityClosed : preferenceTransitivity
  utilityContinuityClosed : utilityContinuity
  optimalChoiceClosed : optimalChoice
  utilityEvidence : UtilityMaximizationEvidence U

def UtilityMaximizationCertificateClosed (C : UtilityMaximizationCertificate) : Prop :=
  C.preferenceCompleteness ∧ C.preferenceTransitivity ∧ C.utilityContinuity ∧ C.optimalChoice ∧ UtilityMaximizationClosed C

theorem utility_maximization_certificate_closed (C : UtilityMaximizationCertificate) : UtilityMaximizationCertificateClosed C := by
  exact And.intro C.preferenceCompletenessClosed (And.intro C.preferenceTransitivityClosed (And.intro C.utilityContinuityClosed (And.intro C.optimalChoiceClosed C.utilityEvidence)))

structure LaborSupplyCertificate (L : LaborSupplyPackage) where
  wageOfferCurve : Prop
  reservationWage : Prop
  wageOfferCurveClosed : wageOfferCurve
  reservationWageClosed : reservationWage
  laborSupplyEvidence : LaborSupplyEvidence L

def LaborSupplyCertificateClosed (C : LaborSupplyCertificate) : Prop :=
  C.wageOfferCurve ∧ C.reservationWage ∧ LaborSupplyClosed C

theorem labor_supply_certificate_closed (C : LaborSupplyCertificate) : LaborSupplyCertificateClosed C := by
  exact And.intro C.wageOfferCurveClosed (And.intro C.reservationWageClosed C.laborSupplyEvidence)

structure LaborDemandCertificate (D : LaborDemandPackage) where
  marginalProduct : Prop
  profitMaximization : Prop
  marginalProductClosed : marginalProduct
  profitMaximizationClosed : profitMaximization
  laborDemandEvidence : LaborDemandEvidence D

def LaborDemandCertificateClosed (C : LaborDemandCertificate) : Prop :=
  C.marginalProduct ∧ C.profitMaximization ∧ LaborDemandClosed C

theorem labor_demand_certificate_closed (C : LaborDemandCertificate) : LaborDemandCertificateClosed C := by
  exact And.intro C.marginalProductClosed (And.intro C.profitMaximizationClosed C.laborDemandEvidence)

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
