import DiffractionScatteringCanonicalLaneLean.DiffractionProjection

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScatteringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse