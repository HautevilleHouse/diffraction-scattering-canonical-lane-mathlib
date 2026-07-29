import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure DiffractionPattern where
  apertureGeometry : Type u
  incidentWave : Type v
  farFieldIntensity : Type w
  patternComputed : Prop
  interferenceTermsAccounted : Prop
  crossSectionDerived : Prop

def DiffractionPatternClosed (D : DiffractionPattern) : Prop :=
  D.patternComputed ∧ D.interferenceTermsAccounted ∧ D.crossSectionDerived

structure DiffractionPatternEvidence (D : DiffractionPattern) where
  patternComputedClosed : D.patternComputed
  interferenceTermsAccountedClosed : D.interferenceTermsAccounted
  crossSectionDerivedClosed : D.crossSectionDerived

theorem diffraction_pattern_closed_from_evidence (D : DiffractionPattern)
    (E : DiffractionPatternEvidence D) : DiffractionPatternClosed D := by
  exact And.intro E.patternComputedClosed
    (And.intro E.interferenceTermsAccountedClosed E.crossSectionDerivedClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse