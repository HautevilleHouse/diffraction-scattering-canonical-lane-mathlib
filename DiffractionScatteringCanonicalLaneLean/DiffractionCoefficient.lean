import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure DiffractionCoefficientPackage where
  incidentWave : Type u
  scatteredWave : Type v
  polarisation : Type w
  farFieldPattern : Prop
  edgeCondition : Prop
  uniformAsymptotic : Prop

structure DiffractionCoefficientEvidence (D : DiffractionCoefficientPackage) where
  farFieldPatternClosed : D.farFieldPattern
  edgeConditionClosed : D.edgeCondition
  uniformAsymptoticClosed : D.uniformAsymptotic

def DiffractionCoefficientClosed (D : DiffractionCoefficientPackage) : Prop :=
  D.farFieldPattern ∧ D.edgeCondition ∧ D.uniformAsymptotic

theorem diffraction_coefficient_closed_from_evidence (D : DiffractionCoefficientPackage) (E : DiffractionCoefficientEvidence D) : DiffractionCoefficientClosed D := by
  exact And.intro E.farFieldPatternClosed (And.intro E.edgeConditionClosed E.uniformAsymptoticClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse
