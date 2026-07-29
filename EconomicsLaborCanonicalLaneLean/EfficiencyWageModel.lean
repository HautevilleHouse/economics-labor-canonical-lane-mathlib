import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure EfficiencyWagePackage where
  wage : ℝ
  effort : ℝ
  productivity : ℝ
  noShirkingCondition : Prop

structure EfficiencyWageEvidence (E : EfficiencyWagePackage) where
  wageClosed : E.wage > 0
  effortClosed : E.effort ∈ Set.Ioo (0 : ℝ) 1
  productivityClosed : E.productivity = E.wage * E.effort
  noShirkingConditionClosed : E.noShirkingCondition

def EfficiencyWageClosed (E : EfficiencyWagePackage) : Prop :=
  E.wage > 0 ∧ E.effort ∈ Set.Ioo (0 : ℝ) 1 ∧ E.productivity = E.wage * E.effort ∧ E.noShirkingCondition

theorem efficiency_wage_closed_from_evidence (E : EfficiencyWagePackage) (Ev : EfficiencyWageEvidence E) : EfficiencyWageClosed E :=
  And.intro Ev.wageClosed (And.intro Ev.effortClosed (And.intro Ev.productivityClosed Ev.noShirkingConditionClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse