import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.PhaseSpaceRelations

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure CorrespondenceFlowPackage {P : PhaseSpaceRelationsPackage} where
  flowMap : P.phaseSpace → P.phaseSpace
  relationPreservation : Prop
  continuity : Prop
  flowClosed : Prop

def CorrespondenceFlowClosed {P : PhaseSpaceRelationsPackage} (F : CorrespondenceFlowPackage P) : Prop :=
  F.relationPreservation ∧ F.continuity ∧ F.flowClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
