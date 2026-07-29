import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.CorrespondenceFlow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure FixedPointAdmissibilityPackage {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} where
  fixedPointSet : Set P.phaseSpace
  admissibilityCondition : Prop
  relationClosure : Prop
  fixedPointAdmissibleClosed : Prop

def FixedPointAdmissibilityClosed {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} (FP : FixedPointAdmissibilityPackage P F) : Prop :=
  FP.admissibilityCondition ∧ FP.relationClosure ∧ FP.fixedPointAdmissibleClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
