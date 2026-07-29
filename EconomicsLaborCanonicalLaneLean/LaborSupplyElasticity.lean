import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborSupplyElasticityPackage where
  hoursWorked : Prop
  realWage : Prop
  elasticityMeasure : Prop
  substitutionEffect : Prop
  incomeEffect : Prop

structure LaborSupplyElasticityEvidence (E : LaborSupplyElasticityPackage) where
  hoursWorkedClosed : E.hoursWorked
  realWageClosed : E.realWage
  elasticityMeasureClosed : E.elasticityMeasure
  substitutionEffectClosed : E.substitutionEffect
  incomeEffectClosed : E.incomeEffect

def LaborSupplyElasticityClosed (E : LaborSupplyElasticityPackage) : Prop :=
  E.hoursWorked ∧ E.realWage ∧ E.elasticityMeasure ∧ E.substitutionEffect ∧ E.incomeEffect

theorem labor_supply_elasticity_closed_from_evidence (E : LaborSupplyElasticityPackage) (Ev : LaborSupplyElasticityEvidence E) :
    LaborSupplyElasticityClosed E := by
  exact And.intro Ev.hoursWorkedClosed (And.intro Ev.realWageClosed (And.intro Ev.elasticityMeasureClosed (And.intro Ev.substitutionEffectClosed Ev.incomeEffectClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse