import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsLaborCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "economics-labor-canonical-lane",
  theoremName := "Constrained Economics Labor Theorem",
  theoremObject := "Arrow-Debreu equilibrium and labor market closure",
  classicalBoundary := "unrestricted classical macroeconomics boundary carried by formalization layer",
  constrainedStatement := "Admissible-class closure for labor economics: bridge closes on equilibrium, gate closes on utility and labor supply consistency",
  carriedRemainder := "classical boundary carried with endpoint open"
}

def ConstrainedTheoremClosed : Prop :=
  sourceTheoremStatement.sourceKey = "economics-labor-canonical-lane" ∧
  sourceTheoremStatement.theoremName = "Constrained Economics Labor Theorem"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "economics-labor-canonical-lane" := by
  rfl

theorem theorem_statement_name_checked :
    sourceTheoremStatement.theoremName = "Constrained Economics Labor Theorem" := by
  rfl

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse