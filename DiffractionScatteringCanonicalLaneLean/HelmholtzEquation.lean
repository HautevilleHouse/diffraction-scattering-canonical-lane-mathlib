import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffractionScatteringCanonicalLaneLean

structure HelmholtzEquationPackage where
  waveNumber : ℝ
  sourceTerm : Type u
  boundaryCondition : Type v
  radiationCondition : Prop
  uniquenessSolution : Prop
  greenFunctionExists : Prop

structure HelmholtzEquationEvidence (H : HelmholtzEquationPackage) where
  radiationConditionClosed : H.radiationCondition
  uniquenessSolutionClosed : H.uniquenessSolution
  greenFunctionExistsClosed : H.greenFunctionExists

def HelmholtzEquationClosed (H : HelmholtzEquationPackage) : Prop :=
  H.radiationCondition ∧ H.uniquenessSolution ∧ H.greenFunctionExists

theorem helmholtz_equation_closed_from_evidence
    (H : HelmholtzEquationPackage) (E : HelmholtzEquationEvidence H) :
    HelmholtzEquationClosed H := by
  exact And.intro E.radiationConditionClosed
    (And.intro E.uniquenessSolutionClosed E.greenFunctionExistsClosed)

end DiffractionScatteringCanonicalLaneLean
end HautevilleHouse