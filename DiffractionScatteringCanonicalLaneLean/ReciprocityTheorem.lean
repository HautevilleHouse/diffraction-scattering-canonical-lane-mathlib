import DiffractionScatteringCanonicalLaneLean.BornApproximation

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure ReciprocityTheoremPackage {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} where
  timeReversalSymmetry : Prop
  sourceReciprocity : Prop
  farFieldReciprocity : Prop
  obstracleReciprocity : Prop

structure ReciprocityTheoremEvidence {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} (R : ReciprocityTheoremPackage B) where
  timeReversalSymmetryClosed : R.timeReversalSymmetry
  sourceReciprocityClosed : R.sourceReciprocity
  farFieldReciprocityClosed : R.farFieldReciprocity
  obstracleReciprocityClosed : R.obstracleReciprocity

def ReciprocityTheoremClosed {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} (R : ReciprocityTheoremPackage B) : Prop :=
  R.timeReversalSymmetry ∧ R.sourceReciprocity ∧
  R.farFieldReciprocity ∧ R.obstracleReciprocity

theorem reciprocity_theorem_closed_from_evidence
    {F : FarFieldAsymptoticsPackage} {B : BornApproximationPackage F}
    (R : ReciprocityTheoremPackage B) (E : ReciprocityTheoremEvidence R) :
    ReciprocityTheoremClosed R := by
  exact And.intro E.timeReversalSymmetryClosed
    (And.intro E.sourceReciprocityClosed
      (And.intro E.farFieldReciprocityClosed E.obstracleReciprocityClosed))

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse