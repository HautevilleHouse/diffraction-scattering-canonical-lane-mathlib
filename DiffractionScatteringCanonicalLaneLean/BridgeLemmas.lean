import DiffractionScatteringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

def DiffractionWitnessClosed (O : DiffractionAdmittedObject) : Prop :=
  O.objectClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiffractionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.objectClosed

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse