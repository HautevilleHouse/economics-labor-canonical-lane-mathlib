import EconomicsLaborCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure LaborMarketEconomy where
  laborTypes : Type
  firms : Type
  households : Type
  wages : laborTypes → ℝ
  employment : laborTypes → ℝ
  utility : ℝ
  constraints : Prop
  constraintsTerm : constraints

structure LaborAdmittedObject where
  economy : LaborMarketEconomy
  laborMarketClearing : Prop
  efficiencyWageEquilibrium : Prop
  conclusion : efficiencyWageEquilibrium

structure LaborEndgameState where
  object : LaborAdmittedObject

def LaborWitnessClosed (O : LaborAdmittedObject) : Prop :=
  O.efficiencyWageEquilibrium

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
