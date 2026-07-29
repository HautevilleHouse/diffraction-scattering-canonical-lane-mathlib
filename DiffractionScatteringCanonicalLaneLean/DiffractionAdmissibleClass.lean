import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure AdmissibleObject where
  source : Type
  farFieldPattern : source → ℂ
  obstacleGeometry : Prop
  incidentWave : source → ℂ

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ScatteringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse