import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborSupplyPackage (A : AdmissibleClass) where
  wageElasticityMarginal : Prop
  optimalHoursChoice : Prop
  reservationWage : Prop
  incomeSubstitutionEffect : Prop
  utilityMaximizationAtInterior : Prop
  wageElasticityMarginalTerm : wageElasticityMarginal
  optimalHoursChoiceTerm : optimalHoursChoice
  reservationWageTerm : reservationWage
  incomeSubstitutionEffectTerm : incomeSubstitutionEffect
  utilityMaximizationAtInteriorTerm : utilityMaximizationAtInterior

structure LaborSupplyEvidence (A : AdmissibleClass) (L : LaborSupplyPackage A) where
  wageElasticityMarginalClosed : L.wageElasticityMarginal
  optimalHoursChoiceClosed : L.optimalHoursChoice
  reservationWageClosed : L.reservationWage
  incomeSubstitutionEffectClosed : L.incomeSubstitutionEffect
  utilityMaximizationAtInteriorClosed : L.utilityMaximizationAtInterior

def LaborSupplyClosed (A : AdmissibleClass) (L : LaborSupplyPackage A) : Prop :=
  L.wageElasticityMarginal ∧ L.optimalHoursChoice ∧
  L.reservationWage ∧ L.incomeSubstitutionEffect ∧
  L.utilityMaximizationAtInterior

theorem labor_supply_closed_from_evidence
    (A : AdmissibleClass) (L : LaborSupplyPackage A)
    (E : LaborSupplyEvidence A L) : LaborSupplyClosed A L := by
  exact And.intro E.wageElasticityMarginalClosed
    (And.intro E.optimalHoursChoiceClosed
      (And.intro E.reservationWageClosed
        (And.intro E.incomeSubstitutionEffectClosed
          E.utilityMaximizationAtInteriorClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse