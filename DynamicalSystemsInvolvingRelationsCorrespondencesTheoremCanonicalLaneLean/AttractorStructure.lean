import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.DynamicsBase

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure AttractorPackage (R : RelationCorrespondenceSystem) where
  attractorSet : Set R.stateSpace
  invarianceUnderRelation : ∀ x y, R.relation x y → (x ∈ attractorSet → y ∈ attractorSet)
  attractivityProperty : Prop
  attractionEvidence : attractivityProperty

def AttractorClosed {R : RelationCorrespondenceSystem} (A : AttractorPackage R) : Prop :=
  A.invarianceUnderRelation ∧ A.attractivityProperty

theorem attractor_closed_from_evidence {R : RelationCorrespondenceSystem}
    (A : AttractorPackage R) : AttractorClosed A :=
  And.intro A.invarianceUnderRelation A.attractionEvidence

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse