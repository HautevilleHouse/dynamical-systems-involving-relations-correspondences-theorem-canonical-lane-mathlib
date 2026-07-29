import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure AttractorCorrespondence where
  system : CorrespondenceSystem
  attractorSet : Set system.stateSpace
  attractingProperty : ∀ neighborhood, ∃ time, ∀ initial ∈ system.initialStates, eventuallyInside initial neighborhood time
  invarianceUnderRelation : ∀ x ∈ attractorSet, ∀ y, system.transitionRelation x y → y ∈ attractorSet

structure AttractorCorrespondenceEvidence (A : AttractorCorrespondence) where
  attractingPropertyClosed : A.attractingProperty
  invarianceUnderRelationClosed : A.invarianceUnderRelation

def AttractorCorrespondenceClosed (A : AttractorCorrespondence) : Prop :=
  A.attractingProperty ∧ A.invarianceUnderRelation

theorem attractor_correspondence_closed_from_evidence (A : AttractorCorrespondence) (E : AttractorCorrespondenceEvidence A) :
    AttractorCorrespondenceClosed A := by
  exact And.intro E.attractingPropertyClosed E.invarianceUnderRelationClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
