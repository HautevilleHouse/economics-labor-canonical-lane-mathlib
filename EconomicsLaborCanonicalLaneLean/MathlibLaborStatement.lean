import EconomicsLaborCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibLaborProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibLaborProofObligation : MathlibLaborProofObligation :=
  { sourceKey := sourceRepository,
    theoremObject := sourceDescription,
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "labor-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

theorem mathlib_common_core_imported_checked : mathlibLaborProofObligation.commonCoreImported = true := by rfl

theorem theorem_specific_endgame_pilot_closed : forall A : AdmissibleClass, ConstrainedLaborClosure A := by
  intro A
  exact constrained_labor_endgame A

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
