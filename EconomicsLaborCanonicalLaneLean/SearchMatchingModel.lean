import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure SearchMatchingPackage where
  vacancyRate : ℝ
  unemploymentRate : ℝ
  matchingFunction : ℝ
  beveridgeCurveRelation : Prop

structure SearchMatchingEvidence (S : SearchMatchingPackage) where
  vacancyRateClosed : S.vacancyRate ∈ Set.Ioo (0 : ℝ) 1
  unemploymentRateClosed : S.unemploymentRate ∈ Set.Ioo (0 : ℝ) 1
  matchingFunctionClosed : S.matchingFunction = S.vacancyRate ^ 0.5 * S.unemploymentRate ^ 0.5
  beveridgeCurveRelationClosed : S.beveridgeCurveRelation

def SearchMatchingClosed (S : SearchMatchingPackage) : Prop :=
  S.vacancyRate ∈ Set.Ioo (0 : ℝ) 1 ∧ S.unemploymentRate ∈ Set.Ioo (0 : ℝ) 1 ∧
  S.matchingFunction = S.vacancyRate ^ 0.5 * S.unemploymentRate ^ 0.5 ∧ S.beveridgeCurveRelation

theorem search_matching_closed_from_evidence (S : SearchMatchingPackage) (E : SearchMatchingEvidence S) : SearchMatchingClosed S :=
  And.intro E.vacancyRateClosed (And.intro E.unemploymentRateClosed (And.intro E.matchingFunctionClosed E.beveridgeCurveRelationClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse