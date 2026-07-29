import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure HumanCapitalPackage where
  educationPremium : Prop
  skillFormation : Prop
  signalingModel : Prop
  wageGapDynamics : Prop

structure HumanCapitalEvidence (H : HumanCapitalPackage) where
  educationPremiumClosed : H.educationPremium
  skillFormationClosed : H.skillFormation
  signalingModelClosed : H.signalingModel
  wageGapDynamicsClosed : H.wageGapDynamics

def HumanCapitalClosed (H : HumanCapitalPackage) : Prop :=
  H.educationPremium ∧ H.skillFormation ∧ H.signalingModel ∧ H.wageGapDynamics

theorem human_capital_closed_from_evidence (H : HumanCapitalPackage) (E : HumanCapitalEvidence H) :
    HumanCapitalClosed H := by
  exact And.intro E.educationPremiumClosed (And.intro E.skillFormationClosed
    (And.intro E.signalingModelClosed E.wageGapDynamicsClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse