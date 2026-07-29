import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.ShadowingProperty

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure StabilityUnderConjugacyPackage {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    {T : TopologicalEntropyClassificationPackage M}
    (S : ShadowingPropertyPackage T) where
  topologicalConjugacyClass : Type u
  structuralStabilityCondition : Prop
  genericPersistence : Prop
  bifurcationThreshold : Prop

structure StabilityUnderConjugacyEvidence {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    {T : TopologicalEntropyClassificationPackage M}
    {S : ShadowingPropertyPackage T}
    (U : StabilityUnderConjugacyPackage S) where
  structuralStabilityConditionClosed : U.structuralStabilityCondition
  genericPersistenceClosed : U.genericPersistence
  bifurcationThresholdClosed : U.bifurcationThreshold

def StabilityUnderConjugacyClosed {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    {T : TopologicalEntropyClassificationPackage M}
    {S : ShadowingPropertyPackage T}
    (U : StabilityUnderConjugacyPackage S) : Prop :=
  U.structuralStabilityCondition ∧ U.genericPersistence ∧ U.bifurcationThreshold

theorem stability_under_conjugacy_closed_from_evidence
    {R : RelationCorrespondencePackage} {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    {T : TopologicalEntropyClassificationPackage M}
    {S : ShadowingPropertyPackage T}
    (U : StabilityUnderConjugacyPackage S)
    (E : StabilityUnderConjugacyEvidence U) : StabilityUnderConjugacyClosed U := by
  exact And.intro E.structuralStabilityConditionClosed
    (And.intro E.genericPersistenceClosed E.bifurcationThresholdClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse