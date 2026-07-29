import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborSupplyPackage where
  wage : ℝ
  hours : ℝ
  utility : ℝ
  optimalityCondition : Prop

structure LaborSupplyEvidence (L : LaborSupplyPackage) where
  wageClosed : L.wage > 0
  hoursClosed : L.hours ≥ 0
  utilityClosed : L.utility = L.wage * L.hours - (L.hours^2)/2
  optimalityConditionClosed : L.optimalityCondition

def LaborSupplyClosed (L : LaborSupplyPackage) : Prop :=
  L.wage > 0 ∧ L.hours ≥ 0 ∧ L.utility = L.wage * L.hours - (L.hours^2)/2 ∧ L.optimalityCondition

theorem labor_supply_closed_from_evidence (L : LaborSupplyPackage) (E : LaborSupplyEvidence L) : LaborSupplyClosed L :=
  And.intro E.wageClosed (And.intro E.hoursClosed (And.intro E.utilityClosed E.optimalityConditionClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse