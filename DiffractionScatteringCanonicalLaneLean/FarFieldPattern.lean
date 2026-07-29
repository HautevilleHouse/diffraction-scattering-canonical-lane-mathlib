import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure FarFieldPattern (d : Nat) where
  direction : Vector ℝ d
  intensity : ℝ
  asymptoticDecay : ℝ

structure FarFieldPatternEvidence (d : Nat) (F : FarFieldPattern d) where
  directionClosed : ‖F.direction‖ = 1
  intensityClosed : F.intensity ≥ 0
  asymptoticDecayClosed : F.asymptoticDecay = - (d - 1) / 2

def FarFieldPatternClosed (d : Nat) (F : FarFieldPattern d) : Prop :=
  ‖F.direction‖ = 1 ∧ F.intensity ≥ 0 ∧ F.asymptoticDecay = - (d - 1) / 2

theorem far_field_pattern_closed_from_evidence (d : Nat) (F : FarFieldPattern d)
    (E : FarFieldPatternEvidence d F) : FarFieldPatternClosed d F := by
  exact And.intro E.directionClosed (And.intro E.intensityClosed E.asymptoticDecayClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse