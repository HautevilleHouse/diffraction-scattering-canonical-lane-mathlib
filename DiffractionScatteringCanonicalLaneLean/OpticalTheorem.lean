import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure OpticalTheoremPackage where
  totalCrossSection : ℝ
  forwardScatteringAmplitude : Type u
  extinctionRelation : Prop
  unitaryCondition : Prop
  conservationLaw : Prop

structure OpticalTheoremEvidence (O : OpticalTheoremPackage) where
  extinctionRelationClosed : O.extinctionRelation
  unitaryConditionClosed : O.unitaryCondition
  conservationLawClosed : O.conservationLaw

def OpticalTheoremClosed (O : OpticalTheoremPackage) : Prop :=
  O.extinctionRelation ∧ O.unitaryCondition ∧ O.conservationLaw

theorem optical_theorem_closed_from_evidence
    (O : OpticalTheoremPackage) (E : OpticalTheoremEvidence O) :
    OpticalTheoremClosed O := by
  exact And.intro E.extinctionRelationClosed
    (And.intro E.unitaryConditionClosed E.conservationLawClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse