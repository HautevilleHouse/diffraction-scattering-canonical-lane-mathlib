import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure GeometricalTheoryOfDiffractionPackage where
  raySystem : Type u
  reflectionLaw : Prop
  diffractionLaw : Prop
  fieldContinuity : Prop
  transitionRegion : Prop

structure GeometricalTheoryOfDiffractionEvidence (G : GeometricalTheoryOfDiffractionPackage) where
  reflectionLawClosed : G.reflectionLaw
  diffractionLawClosed : G.diffractionLaw
  fieldContinuityClosed : G.fieldContinuity
  transitionRegionClosed : G.transitionRegion

def GeometricalTheoryOfDiffractionClosed (G : GeometricalTheoryOfDiffractionPackage) : Prop :=
  G.reflectionLaw ∧ G.diffractionLaw ∧ G.fieldContinuity ∧ G.transitionRegion

theorem geometrical_theory_of_diffraction_closed_from_evidence (G : GeometricalTheoryOfDiffractionPackage) (E : GeometricalTheoryOfDiffractionEvidence G) : GeometricalTheoryOfDiffractionClosed G := by
  exact And.intro E.reflectionLawClosed (And.intro E.diffractionLawClosed (And.intro E.fieldContinuityClosed E.transitionRegionClosed))

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse
