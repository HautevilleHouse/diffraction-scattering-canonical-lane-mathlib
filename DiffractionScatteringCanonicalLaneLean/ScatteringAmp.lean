import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure ScatteringAmplitudePackage where
  incidentWave : Type u
  scatteredWave : Type v
  amplitudeFunction : Type w
  farFieldPattern : Prop
  energyConservation : Prop
  opticalTheoremCompatible : Prop

structure ScatteringAmplitudeEvidence (S : ScatteringAmplitudePackage) where
  farFieldPatternClosed : S.farFieldPattern
  energyConservationClosed : S.energyConservation
  opticalTheoremCompatibleClosed : S.opticalTheoremCompatible

def ScatteringAmplitudeClosed (S : ScatteringAmplitudePackage) : Prop :=
  S.farFieldPattern ∧ S.energyConservation ∧ S.opticalTheoremCompatible

theorem scattering_amplitude_closed_from_evidence
    (S : ScatteringAmplitudePackage) (E : ScatteringAmplitudeEvidence S) :
    ScatteringAmplitudeClosed S := by
  exact And.intro E.farFieldPatternClosed
    (And.intro E.energyConservationClosed E.opticalTheoremCompatibleClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse