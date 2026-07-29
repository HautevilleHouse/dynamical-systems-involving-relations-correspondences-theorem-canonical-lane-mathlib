import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure CorrespondenceSystem where
  stateSpace : Type u
  transitionRelation : stateSpace → stateSpace → Prop
  outputMap : stateSpace → Type v
  initialStates : Set stateSpace
  forwardInvariant : Set stateSpace → Prop
  backwardInvariant : Set stateSpace → Prop

structure CorrespondenceSystemEvidence (C : CorrespondenceSystem) where
  initialStatesClosed : C.initialStates.Nonempty
  transitionRelationClosed : ∀ x, ∃ y, C.transitionRelation x y
  forwardInvariantClosed : C.forwardInvariant C.initialStates

def CorrespondenceSystemClosed (C : CorrespondenceSystem) : Prop :=
  C.initialStates.Nonempty ∧ (∀ x, ∃ y, C.transitionRelation x y) ∧ C.forwardInvariant C.initialStates

theorem correspondence_system_closed_from_evidence (C : CorrespondenceSystem) (E : CorrespondenceSystemEvidence C) :
    CorrespondenceSystemClosed C := by
  exact And.intro E.initialStatesClosed (And.intro E.transitionRelationClosed E.forwardInvariantClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
