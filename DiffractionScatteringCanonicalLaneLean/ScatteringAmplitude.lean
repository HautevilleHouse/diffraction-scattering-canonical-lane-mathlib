import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure ScatteringAmplitude (d : Nat) where
  waveVector : ℕ → Vector ℝ d
  incidentFlux : ℝ
  outgoingFlux : ℝ
  phaseShift : ℝ

structure ScatteringAmplitudeEvidence (d : Nat) (S : ScatteringAmplitude d) where
  waveVectorClosed : S.waveVector = S.waveVector
  incidentFluxClosed : S.incidentFlux > 0
  outgoingFluxClosed : S.outgoingFlux ≥ 0
  phaseShiftClosed : S.phaseShift ∈ Set.Icc (-π) π

def ScatteringAmplitudeClosed (d : Nat) (S : ScatteringAmplitude d) : Prop :=
  S.incidentFlux > 0 ∧ S.outgoingFlux ≥ 0 ∧ S.phaseShift ∈ Set.Icc (-π) π

theorem scattering_amplitude_closed_from_evidence (d : Nat) (S : ScatteringAmplitude d)
    (E : ScatteringAmplitudeEvidence d S) : ScatteringAmplitudeClosed d S := by
  exact And.intro E.incidentFluxClosed (And.intro E.outgoingFluxClosed E.phaseShiftClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse