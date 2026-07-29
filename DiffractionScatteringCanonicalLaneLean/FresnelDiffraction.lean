import DiffractionScatteringCanonicalLaneLean.BornApproximation

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure FresnelDiffractionPackage {S : ScatteringAmplitudePackage}
    {D : DiffractionPatternPackage S} {B : BornApproximationPackage S D} where
  quadraticPhase : Prop
  fresnelIntegral : Prop
  propagationKernel : Prop
  nearFieldPropagator : Prop
  diffractionEfficiency : Prop

structure FresnelDiffractionEvidence {S : ScatteringAmplitudePackage}
    {D : DiffractionPatternPackage S} {B : BornApproximationPackage S D}
    (F : FresnelDiffractionPackage S D B) where
  quadraticPhaseClosed : F.quadraticPhase
  fresnelIntegralClosed : F.fresnelIntegral
  propagationKernelClosed : F.propagationKernel
  nearFieldPropagatorClosed : F.nearFieldPropagator
  diffractionEfficiencyClosed : F.diffractionEfficiency

def FresnelDiffractionClosed {S : ScatteringAmplitudePackage}
    {D : DiffractionPatternPackage S} {B : BornApproximationPackage S D}
    (F : FresnelDiffractionPackage S D B) : Prop :=
  F.quadraticPhase ∧ F.fresnelIntegral ∧ F.propagationKernel ∧
  F.nearFieldPropagator ∧ F.diffractionEfficiency

theorem fresnel_diffraction_closed_from_evidence
    {S : ScatteringAmplitudePackage} {D : DiffractionPatternPackage S}
    {B : BornApproximationPackage S D} (F : FresnelDiffractionPackage S D B)
    (E : FresnelDiffractionEvidence F) : FresnelDiffractionClosed F := by
  exact And.intro E.quadraticPhaseClosed
    (And.intro E.fresnelIntegralClosed
      (And.intro E.propagationKernelClosed
        (And.intro E.nearFieldPropagatorClosed E.diffractionEfficiencyClosed)))

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse