import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure BoundaryLayerPackage where
  boundaryGeometry : Type u
  layerPotential : Type v
  impedanceCondition : Prop
  creepingWaveFormation : Prop
  layerWidthAsymptotic : Prop

structure BoundaryLayerEvidence (B : BoundaryLayerPackage) where
  impedanceConditionClosed : B.impedanceCondition
  creepingWaveFormationClosed : B.creepingWaveFormation
  layerWidthAsymptoticClosed : B.layerWidthAsymptotic

def BoundaryLayerClosed (B : BoundaryLayerPackage) : Prop :=
  B.impedanceCondition ∧ B.creepingWaveFormation ∧ B.layerWidthAsymptotic

theorem boundary_layer_closed_from_evidence (B : BoundaryLayerPackage) (E : BoundaryLayerEvidence B) : BoundaryLayerClosed B := by
  exact And.intro E.impedanceConditionClosed (And.intro E.creepingWaveFormationClosed E.layerWidthAsymptoticClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse
