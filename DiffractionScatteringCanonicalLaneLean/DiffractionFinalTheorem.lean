import DiffractionScatteringCanonicalLaneLean.DiffractionGateLemmas

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

def ConstrainedDiffractionScatteringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffraction_scattering_endgame (A : AdmissibleClass) :
    ConstrainedDiffractionScatteringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse