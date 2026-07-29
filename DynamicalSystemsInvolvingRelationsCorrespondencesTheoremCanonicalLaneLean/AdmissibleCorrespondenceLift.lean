import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure AdmissibleCorrespondenceLift where
  baseSystem : CorrespondenceSystem
  liftedSystem : CorrespondenceSystem
  liftMap : baseSystem.stateSpace → liftedSystem.stateSpace
  liftPreservesTransition : ∀ x y, baseSystem.transitionRelation x y → liftedSystem.transitionRelation (liftMap x) (liftMap y)
  liftInjective : Function.Injective liftMap
  liftSurjectiveOnAttractors : ∀ A : AttractorCorrespondence, A.system = liftedSystem → ∃ B : AttractorCorrespondence, B.system = baseSystem ∧ liftMap '' B.attractorSet = A.attractorSet

structure AdmissibleCorrespondenceLiftEvidence (L : AdmissibleCorrespondenceLift) where
  liftPreservesTransitionClosed : L.liftPreservesTransition
  liftInjectiveClosed : L.liftInjective
  liftSurjectiveOnAttractorsClosed : L.liftSurjectiveOnAttractors

def AdmissibleCorrespondenceLiftClosed (L : AdmissibleCorrespondenceLift) : Prop :=
  L.liftPreservesTransition ∧ L.liftInjective ∧ L.liftSurjectiveOnAttractors

theorem admissible_correspondence_lift_closed_from_evidence (L : AdmissibleCorrespondenceLift) (E : AdmissibleCorrespondenceLiftEvidence L) :
    AdmissibleCorrespondenceLiftClosed L := by
  exact And.intro E.liftPreservesTransitionClosed (And.intro E.liftInjectiveClosed E.liftSurjectiveOnAttractorsClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
