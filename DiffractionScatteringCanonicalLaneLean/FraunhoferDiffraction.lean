import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure FraunhoferDiffractionPackage where
  apertureGeometry : Type u
  farFieldDistance : ℝ
  intensityPattern : Type v
  fourierTransformRelation : Prop
  angularResolution : Prop
  paraxialApproximation : Prop

structure FraunhoferDiffractionEvidence (F : FraunhoferDiffractionPackage) where
  fourierTransformRelationClosed : F.fourierTransformRelation
  angularResolutionClosed : F.angularResolution
  paraxialApproximationClosed : F.paraxialApproximation

def FraunhoferDiffractionClosed (F : FraunhoferDiffractionPackage) : Prop :=
  F.fourierTransformRelation ∧ F.angularResolution ∧ F.paraxialApproximation

theorem fraunhofer_diffraction_closed_from_evidence
    (F : FraunhoferDiffractionPackage) (E : FraunhoferDiffractionEvidence F) :
    FraunhoferDiffractionClosed F := by
  exact And.intro E.fourierTransformRelationClosed
    (And.intro E.angularResolutionClosed E.paraxialApproximationClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse