import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure AdmissibleClass where
  object : LaborAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LaborWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
