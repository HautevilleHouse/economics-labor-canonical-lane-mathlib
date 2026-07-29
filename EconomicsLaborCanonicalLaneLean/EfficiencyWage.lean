import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure EfficiencyWagePackage where
  workerEffort : Prop
  wagePremium : Prop
  shirkingModel : Prop
  turnoverCosts : Prop
  wageProductivityLink : Prop

structure EfficiencyWageEvidence (P : EfficiencyWagePackage) where
  workerEffortClosed : P.workerEffort
  wagePremiumClosed : P.wagePremium
  shirkingModelClosed : P.shirkingModel
  turnoverCostsClosed : P.turnoverCosts
  wageProductivityLinkClosed : P.wageProductivityLink

def EfficiencyWageClosed (P : EfficiencyWagePackage) : Prop :=
  P.workerEffort ∧ P.wagePremium ∧ P.shirkingModel ∧ P.turnoverCosts ∧ P.wageProductivityLink

theorem efficiency_wage_closed_from_evidence (P : EfficiencyWagePackage) (E : EfficiencyWageEvidence P) :
    EfficiencyWageClosed P := by
  exact And.intro E.workerEffortClosed (And.intro E.wagePremiumClosed (And.intro E.shirkingModelClosed (And.intro E.turnoverCostsClosed E.wageProductivityLinkClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
