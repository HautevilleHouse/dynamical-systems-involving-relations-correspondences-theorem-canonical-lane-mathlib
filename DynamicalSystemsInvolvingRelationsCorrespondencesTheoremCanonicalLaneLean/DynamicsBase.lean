import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure RelationCorrespondenceSystem where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  relation : stateSpace → stateSpace → Prop
  correspondence : stateSpace → Set (stateSpace → Set stateSpace)
  deterministicBranching : Prop
  measurableStructure : Prop

def RelationCorrespondenceSystemClosed (R : RelationCorrespondenceSystem) : Prop :=
  R.deterministicBranching ∧ R.measurableStructure

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse