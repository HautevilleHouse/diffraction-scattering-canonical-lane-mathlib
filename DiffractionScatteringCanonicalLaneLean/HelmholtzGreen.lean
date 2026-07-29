import DiffractionScatteringCanonicalLaneLean.ReciprocityTheorem

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure HelmholtzGreenPackage {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} {R : ReciprocityTheoremPackage B} where
  helmholtzOperator : Type
  greenFunction : Type
  integralRepresentation : Prop
  radiationCondition : Prop
  potentialScattering : Prop

structure HelmholtzGreenEvidence {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} {R : ReciprocityTheoremPackage B}
    (H : HelmholtzGreenPackage R) where
  integralRepresentationClosed : H.integralRepresentation
  radiationConditionClosed : H.radiationCondition
  potentialScatteringClosed : H.potentialScattering

def HelmholtzGreenClosed {F : FarFieldAsymptoticsPackage}
    {B : BornApproximationPackage F} {R : ReciprocityTheoremPackage B}
    (H : HelmholtzGreenPackage R) : Prop :=
  H.integralRepresentation ∧ H.radiationCondition ∧ H.potentialScattering

theorem helmholtz_green_closed_from_evidence
    {F : FarFieldAsymptoticsPackage} {B : BornApproximationPackage F}
    {R : ReciprocityTheoremPackage B} (H : HelmholtzGreenPackage R)
    (E : HelmholtzGreenEvidence H) : HelmholtzGreenClosed H := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.radiationConditionClosed E.potentialScatteringClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse