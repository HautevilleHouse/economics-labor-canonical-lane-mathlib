import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborDemandPackage where
  marginalProductTheory : Prop
  laborDemandElasticity : Prop
  firmOptimization : Prop
  equilibriumWage : Prop

structure LaborDemandEvidence (D : LaborDemandPackage) where
  marginalProductTheoryClosed : D.marginalProductTheory
  laborDemandElasticityClosed : D.laborDemandElasticity
  firmOptimizationClosed : D.firmOptimization
  equilibriumWageClosed : D.equilibriumWage

def LaborDemandClosed (D : LaborDemandPackage) : Prop :=
  D.marginalProductTheory ∧ D.laborDemandElasticity ∧ D.firmOptimization ∧ D.equilibriumWage

theorem labor_demand_closed_from_evidence (D : LaborDemandPackage) (E : LaborDemandEvidence D) :
    LaborDemandClosed D := by
  exact And.intro E.marginalProductTheoryClosed (And.intro E.laborDemandElasticityClosed
    (And.intro E.firmOptimizationClosed E.equilibriumWageClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse