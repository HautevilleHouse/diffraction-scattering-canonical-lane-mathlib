import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure BornApproximation (d : Nat) where
  potentialStrength : ℝ
  scatteringAngle : ℝ
  firstOrderTerm : ℝ

structure BornApproximationEvidence (d : Nat) (B : BornApproximation d) where
  potentialStrengthClosed : B.potentialStrength < ∞
  scatteringAngleClosed : B.scatteringAngle ∈ Set.Ioo 0 π
  firstOrderTermClosed : B.firstOrderTerm = B.potentialStrength * Real.sin (B.scatteringAngle / 2)

def BornApproximationClosed (d : Nat) (B : BornApproximation d) : Prop :=
  B.potentialStrength < ∞ ∧ B.scatteringAngle ∈ Set.Ioo 0 π ∧ B.firstOrderTerm = B.potentialStrength * Real.sin (B.scatteringAngle / 2)

theorem born_approximation_closed_from_evidence (d : Nat) (B : BornApproximation d)
    (E : BornApproximationEvidence d B) : BornApproximationClosed d B := by
  exact And.intro E.potentialStrengthClosed (And.intro E.scatteringAngleClosed E.firstOrderTermClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse