import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborSupplyPackage where
  wageElasticity : Prop
  substitutionEffect : Prop
  incomeEffect : Prop
  aggregateLaborSupply : Prop

structure LaborSupplyEvidence (L : LaborSupplyPackage) where
  wageElasticityClosed : L.wageElasticity
  substitutionEffectClosed : L.substitutionEffect
  incomeEffectClosed : L.incomeEffect
  aggregateLaborSupplyClosed : L.aggregateLaborSupply

def LaborSupplyClosed (L : LaborSupplyPackage) : Prop :=
  L.wageElasticity ∧ L.substitutionEffect ∧ L.incomeEffect ∧ L.aggregateLaborSupply

theorem labor_supply_closed_from_evidence (L : LaborSupplyPackage) (E : LaborSupplyEvidence L) :
    LaborSupplyClosed L := by
  exact And.intro E.wageElasticityClosed (And.intro E.substitutionEffectClosed
    (And.intro E.incomeEffectClosed E.aggregateLaborSupplyClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse