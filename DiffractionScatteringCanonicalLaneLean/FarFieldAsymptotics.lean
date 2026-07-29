import DiffractionScatteringCanonicalLaneLean.DiffractionAdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure FarFieldAsymptoticsPackage where
  asymptoticExpansion : Type
  radiationCondition : Prop
  farFieldAmplitude : Type
  decayOrder : Prop
  uniformEstimate : Prop

structure FarFieldAsymptoticsEvidence (P : FarFieldAsymptoticsPackage) where
  radiationConditionClosed : P.radiationCondition
  decayOrderClosed : P.decayOrder
  uniformEstimateClosed : P.uniformEstimate

def FarFieldAsymptoticsClosed (P : FarFieldAsymptoticsPackage) : Prop :=
  P.radiationCondition ∧ P.decayOrder ∧ P.uniformEstimate

theorem far_field_asymptotics_closed_from_evidence
    (P : FarFieldAsymptoticsPackage) (E : FarFieldAsymptoticsEvidence P) :
    FarFieldAsymptoticsClosed P := by
  exact And.intro E.radiationConditionClosed
    (And.intro E.decayOrderClosed E.uniformEstimateClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse