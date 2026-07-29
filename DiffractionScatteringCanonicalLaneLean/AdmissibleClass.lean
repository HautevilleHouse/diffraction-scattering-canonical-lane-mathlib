import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure DiffractionAdmissibleObject where
  scattererGeometry : Type u
  incidentWave : Type v
  patternPredicted : Prop
  patternObserved : patternPredicted
  remainderCarried : Prop

def DiffractionWitnessClosed (O : DiffractionAdmissibleObject) : Prop :=
  O.patternObserved

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse