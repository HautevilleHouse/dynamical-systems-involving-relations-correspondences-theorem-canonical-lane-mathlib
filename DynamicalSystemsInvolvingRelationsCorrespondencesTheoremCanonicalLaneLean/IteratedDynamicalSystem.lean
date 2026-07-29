import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.RelationCorrespondenceLift

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure IteratedDynamicalSystemPackage (R : RelationCorrespondencePackage) where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace → Prop
  iteratedRelation : stateSpace → stateSpace → Prop
  fixedPointSet : Type v
  omegaLimitClassified : Prop
  attractorBasinCovered : Prop

structure IteratedDynamicalSystemEvidence {R : RelationCorrespondencePackage}
    (I : IteratedDynamicalSystemPackage R) where
  omegaLimitClassifiedClosed : I.omegaLimitClassified
  attractorBasinCoveredClosed : I.attractorBasinCovered
  fixedPointSetDefined : I.fixedPointSet

def IteratedDynamicalSystemClosed {R : RelationCorrespondencePackage}
    (I : IteratedDynamicalSystemPackage R) : Prop :=
  I.omegaLimitClassified ∧ I.attractorBasinCovered ∧ I.fixedPointSet

theorem iterated_dynamical_system_closed_from_evidence
    {R : RelationCorrespondencePackage} (I : IteratedDynamicalSystemPackage R)
    (E : IteratedDynamicalSystemEvidence I) : IteratedDynamicalSystemClosed I := by
  exact And.intro E.omegaLimitClassifiedClosed
    (And.intro E.attractorBasinCoveredClosed E.fixedPointSetDefined)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse