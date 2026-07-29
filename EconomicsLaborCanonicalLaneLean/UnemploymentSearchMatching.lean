import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure SearchMatchingPackage where
  matchingFunction : Prop
  jobFindingRate : Prop
  vacancyFillingRate : Prop
  equilibriumUnemployment : Prop

structure SearchMatchingEvidence (S : SearchMatchingPackage) where
  matchingFunctionClosed : S.matchingFunction
  jobFindingRateClosed : S.jobFindingRate
  vacancyFillingRateClosed : S.vacancyFillingRate
  equilibriumUnemploymentClosed : S.equilibriumUnemployment

def SearchMatchingClosed (S : SearchMatchingPackage) : Prop :=
  S.matchingFunction ∧ S.jobFindingRate ∧ S.vacancyFillingRate ∧ S.equilibriumUnemployment

theorem search_matching_closed_from_evidence (S : SearchMatchingPackage) (E : SearchMatchingEvidence S) :
    SearchMatchingClosed S := by
  exact And.intro E.matchingFunctionClosed (And.intro E.jobFindingRateClosed
    (And.intro E.vacancyFillingRateClosed E.equilibriumUnemploymentClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse