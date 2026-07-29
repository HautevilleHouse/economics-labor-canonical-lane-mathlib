import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure MinimumWagePackage where
  employmentEffect : Prop
  wageDistribution : Prop
  surplusTransfer : Prop
  efficiencyCost : Prop

structure MinimumWageEvidence (M : MinimumWagePackage) where
  employmentEffectClosed : M.employmentEffect
  wageDistributionClosed : M.wageDistribution
  surplusTransferClosed : M.surplusTransfer
  efficiencyCostClosed : M.efficiencyCost

def MinimumWageClosed (M : MinimumWagePackage) : Prop :=
  M.employmentEffect ∧ M.wageDistribution ∧ M.surplusTransfer ∧ M.efficiencyCost

theorem minimum_wage_closed_from_evidence (M : MinimumWagePackage) (E : MinimumWageEvidence M) :
    MinimumWageClosed M := by
  exact And.intro E.employmentEffectClosed (And.intro E.wageDistributionClosed
    (And.intro E.surplusTransferClosed E.efficiencyCostClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse