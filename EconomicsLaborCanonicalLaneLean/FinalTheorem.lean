import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsLaborCanonicalLaneLean.LaborSupply
import HautevilleHouse.EconomicsLaborCanonicalLaneLean.HumanCapital
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

def ConstrainedLaborClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_labor_endgame (A : AdmissibleClass) :
    ConstrainedLaborClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse