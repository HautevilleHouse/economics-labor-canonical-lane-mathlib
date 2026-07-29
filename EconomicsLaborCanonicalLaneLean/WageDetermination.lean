import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure WageDeterminationPackage where
  marginalProductivity : Prop
  bargainingPower : Prop
  efficiencyWage : Prop
  wageStickiness : Prop
  minimumWage : Prop

structure WageDeterminationEvidence (W : WageDeterminationPackage) where
  marginalProductivityClosed : W.marginalProductivity
  bargainingPowerClosed : W.bargainingPower
  efficiencyWageClosed : W.efficiencyWage
  wageStickinessClosed : W.wageStickiness
  minimumWageClosed : W.minimumWage

def WageDeterminationClosed (W : WageDeterminationPackage) : Prop :=
  W.marginalProductivity ∧ W.bargainingPower ∧ W.efficiencyWage ∧ W.wageStickiness ∧ W.minimumWage

theorem wage_determination_closed_from_evidence (W : WageDeterminationPackage) (E : WageDeterminationEvidence W) :
    WageDeterminationClosed W := by
  exact And.intro E.marginalProductivityClosed (And.intro E.bargainingPowerClosed (And.intro E.efficiencyWageClosed (And.intro E.wageStickinessClosed E.minimumWageClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse