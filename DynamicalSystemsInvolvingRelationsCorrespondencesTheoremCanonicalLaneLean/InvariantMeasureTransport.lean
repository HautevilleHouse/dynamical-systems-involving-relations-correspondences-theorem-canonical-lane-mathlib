import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.IteratedDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure InvariantMeasureTransportPackage {R : RelationCorrespondencePackage}
    (I : IteratedDynamicalSystemPackage R) where
  invariantMeasureSet : Type u
  transportMap : I.stateSpace → I.stateSpace → Prop
  measurePreservingCondition : Prop
  ergodicDecomposition : Prop
  mixingProperty : Prop

structure InvariantMeasureTransportEvidence {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    (M : InvariantMeasureTransportPackage I) where
  measurePreservingConditionClosed : M.measurePreservingCondition
  ergodicDecompositionClosed : M.ergodicDecomposition
  mixingPropertyClosed : M.mixingProperty

def InvariantMeasureTransportClosed {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    (M : InvariantMeasureTransportPackage I) : Prop :=
  M.measurePreservingCondition ∧ M.ergodicDecomposition ∧ M.mixingProperty

theorem invariant_measure_transport_closed_from_evidence
    {R : RelationCorrespondencePackage} {I : IteratedDynamicalSystemPackage R}
    (M : InvariantMeasureTransportPackage I)
    (E : InvariantMeasureTransportEvidence M) : InvariantMeasureTransportClosed M := by
  exact And.intro E.measurePreservingConditionClosed
    (And.intro E.ergodicDecompositionClosed E.mixingPropertyClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse