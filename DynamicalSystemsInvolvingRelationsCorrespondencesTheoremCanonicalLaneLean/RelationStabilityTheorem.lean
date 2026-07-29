import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure RelationStabilityTheorem where
  relationSystem : CorrespondenceSystem
  stableSet : Set relationSystem.stateSpace
  stableCondition : ∀ x ∈ stableSet, ∀ y, relationSystem.transitionRelation x y → y ∈ stableSet
  attractorContained : ∀ A : AttractorCorrespondence, A.system = relationSystem → A.attractorSet ⊆ stableSet

structure RelationStabilityTheoremEvidence (R : RelationStabilityTheorem) where
  stableConditionClosed : R.stableCondition
  attractorContainedClosed : R.attractorContained

def RelationStabilityTheoremClosed (R : RelationStabilityTheorem) : Prop :=
  R.stableCondition ∧ R.attractorContained

theorem relation_stability_theorem_closed_from_evidence (R : RelationStabilityTheorem) (E : RelationStabilityTheoremEvidence R) :
    RelationStabilityTheoremClosed R := by
  exact And.intro E.stableConditionClosed E.attractorContainedClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
