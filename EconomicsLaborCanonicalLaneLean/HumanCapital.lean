import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure HumanCapitalPackage (A : AdmissibleClass) where
  educationInvestmentDecision : Prop
  wageEquationWithSchooling : Prop
  returnsToSchooling : Prop
  abilityBiasCorrected : Prop
  signalingVsHumanCapital : Prop
  educationInvestmentDecisionTerm : educationInvestmentDecision
  wageEquationWithSchoolingTerm : wageEquationWithSchooling
  returnsToSchoolingTerm : returnsToSchooling
  abilityBiasCorrectedTerm : abilityBiasCorrected
  signalingVsHumanCapitalTerm : signalingVsHumanCapital

structure HumanCapitalEvidence (A : AdmissibleClass) (H : HumanCapitalPackage A) where
  educationInvestmentDecisionClosed : H.educationInvestmentDecision
  wageEquationWithSchoolingClosed : H.wageEquationWithSchooling
  returnsToSchoolingClosed : H.returnsToSchooling
  abilityBiasCorrectedClosed : H.abilityBiasCorrected
  signalingVsHumanCapitalClosed : H.signalingVsHumanCapital

def HumanCapitalClosed (A : AdmissibleClass) (H : HumanCapitalPackage A) : Prop :=
  H.educationInvestmentDecision ∧ H.wageEquationWithSchooling ∧
  H.returnsToSchooling ∧ H.abilityBiasCorrected ∧
  H.signalingVsHumanCapital

theorem human_capital_closed_from_evidence
    (A : AdmissibleClass) (H : HumanCapitalPackage A)
    (E : HumanCapitalEvidence A H) : HumanCapitalClosed A H := by
  exact And.intro E.educationInvestmentDecisionClosed
    (And.intro E.wageEquationWithSchoolingClosed
      (And.intro E.returnsToSchoolingClosed
        (And.intro E.abilityBiasCorrectedClosed
          E.signalingVsHumanCapitalClosed)))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse