import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure AsymptoticWKBPackage where
  phaseFunction : Type u
  amplitudeExpansion : Type v
  eikonalEquation : Prop
  transportEquations : Prop
  causticCrossingCondition : Prop

structure AsymptoticWKBEvidence (A : AsymptoticWKBPackage) where
  eikonalEquationClosed : A.eikonalEquation
  transportEquationsClosed : A.transportEquations
  causticCrossingConditionClosed : A.causticCrossingCondition

def AsymptoticWKBClosed (A : AsymptoticWKBPackage) : Prop :=
  A.eikonalEquation ∧ A.transportEquations ∧ A.causticCrossingCondition

theorem asymptotic_wkb_closed_from_evidence (A : AsymptoticWKBPackage) (E : AsymptoticWKBEvidence A) : AsymptoticWKBClosed A := by
  exact And.intro E.eikonalEquationClosed (And.intro E.transportEquationsClosed E.causticCrossingConditionClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse
