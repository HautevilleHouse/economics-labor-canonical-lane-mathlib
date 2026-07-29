import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure HumanCapitalModelPackage where
  educationInvestment : Prop
  skillAcquisition : Prop
  earningsProfile : Prop
  signalingValue : Prop
  productivityEnhancement : Prop

structure HumanCapitalModelEvidence (H : HumanCapitalModelPackage) where
  educationInvestmentClosed : H.educationInvestment
  skillAcquisitionClosed : H.skillAcquisition
  earningsProfileClosed : H.earningsProfile
  signalingValueClosed : H.signalingValue
  productivityEnhancementClosed : H.productivityEnhancement

def HumanCapitalModelClosed (H : HumanCapitalModelPackage) : Prop :=
  H.educationInvestment ∧ H.skillAcquisition ∧ H.earningsProfile ∧ H.signalingValue ∧ H.productivityEnhancement

theorem human_capital_model_closed_from_evidence (H : HumanCapitalModelPackage) (E : HumanCapitalModelEvidence H) :
    HumanCapitalModelClosed H := by
  exact And.intro E.educationInvestmentClosed (And.intro E.skillAcquisitionClosed (And.intro E.earningsProfileClosed (And.intro E.signalingValueClosed E.productivityEnhancementClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse