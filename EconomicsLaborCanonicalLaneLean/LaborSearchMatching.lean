import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure SearchMatchingPackage where
  vacancyPosting : Prop
  workerSearch : Prop
  matchingFunction : Prop
  bargainingOutcome : Prop
  unemploymentEquilibrium : Prop

structure SearchMatchingEvidence (P : SearchMatchingPackage) where
  vacancyPostingClosed : P.vacancyPosting
  workerSearchClosed : P.workerSearch
  matchingFunctionClosed : P.matchingFunction
  bargainingOutcomeClosed : P.bargainingOutcome
  unemploymentEquilibriumClosed : P.unemploymentEquilibrium

def SearchMatchingClosed (P : SearchMatchingPackage) : Prop :=
  P.vacancyPosting ∧ P.workerSearch ∧ P.matchingFunction ∧ P.bargainingOutcome ∧ P.unemploymentEquilibrium

theorem search_matching_closed_from_evidence (P : SearchMatchingPackage) (E : SearchMatchingEvidence P) :
    SearchMatchingClosed P := by
  exact And.intro E.vacancyPostingClosed (And.intro E.workerSearchClosed (And.intro E.matchingFunctionClosed (And.intro E.bargainingOutcomeClosed E.unemploymentEquilibriumClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
