import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LaborWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse
