import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.AttractorStructure

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure IterationPackage {R : RelationCorrespondenceSystem} (A : AttractorPackage R) where
  stepFunction : R.stateSpace → R.stateSpace
  stepRespectsRelation : ∀ x, R.relation x (stepFunction x)
  iterativeClosure : Set R.stateSpace → Set R.stateSpace
  attractorReach : Prop
  iterationEvidence : attractorReach

def IterationClosed {R : RelationCorrespondenceSystem} {A : AttractorPackage R}
    (I : IterationPackage A) : Prop :=
  I.stepRespectsRelation ∧ I.attractorReach

theorem iteration_closed_from_evidence {R : RelationCorrespondenceSystem}
    {A : AttractorPackage R} (I : IterationPackage A) : IterationClosed I :=
  And.intro I.stepRespectsRelation I.iterationEvidence

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse