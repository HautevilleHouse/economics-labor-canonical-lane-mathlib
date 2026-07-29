import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborMarketEquilibriumPackage where
  laborDemand : Prop
  laborSupply : Prop
  equilibriumWage : Prop
  marketClearing : Prop
  unemployment : Prop

structure LaborMarketEquilibriumEvidence (M : LaborMarketEquilibriumPackage) where
  laborDemandClosed : M.laborDemand
  laborSupplyClosed : M.laborSupply
  equilibriumWageClosed : M.equilibriumWage
  marketClearingClosed : M.marketClearing
  unemploymentClosed : M.unemployment

def LaborMarketEquilibriumClosed (M : LaborMarketEquilibriumPackage) : Prop :=
  M.laborDemand ∧ M.laborSupply ∧ M.equilibriumWage ∧ M.marketClearing ∧ M.unemployment

theorem labor_market_equilibrium_closed_from_evidence (M : LaborMarketEquilibriumPackage) (E : LaborMarketEquilibriumEvidence M) :
    LaborMarketEquilibriumClosed M := by
  exact And.intro E.laborDemandClosed (And.intro E.laborSupplyClosed (And.intro E.equilibriumWageClosed (And.intro E.marketClearingClosed E.unemploymentClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse