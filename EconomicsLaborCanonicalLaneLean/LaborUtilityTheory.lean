import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborUtilityPackage where
  laborSupply : Prop
  leisureDemand : Prop
  wageRate : Prop
  utilityFunction : Prop

structure LaborUtilityEvidence (U : LaborUtilityPackage) where
  laborSupplyClosed : U.laborSupply
  leisureDemandClosed : U.leisureDemand
  wageRateClosed : U.wageRate
  utilityFunctionClosed : U.utilityFunction

def LaborUtilityClosed (U : LaborUtilityPackage) : Prop :=
  U.laborSupply ∧ U.leisureDemand ∧ U.wageRate ∧ U.utilityFunction

theorem labor_utility_closed_from_evidence (U : LaborUtilityPackage) (E : LaborUtilityEvidence U) :
    LaborUtilityClosed U := by
  exact And.intro E.laborSupplyClosed (And.intro E.leisureDemandClosed (And.intro E.wageRateClosed E.utilityFunctionClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse