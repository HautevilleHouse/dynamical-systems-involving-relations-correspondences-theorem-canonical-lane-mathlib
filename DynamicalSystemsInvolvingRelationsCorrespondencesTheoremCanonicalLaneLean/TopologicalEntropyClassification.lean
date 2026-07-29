import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.InvariantMeasureTransport

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure TopologicalEntropyClassificationPackage {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    (M : InvariantMeasureTransportPackage I) where
  entropyFunctional : Type u
  variationalPrinciple : Prop
  symbolicCoding : Prop
  entropyUpperBound : Prop
  entropyLowerBound : Prop

structure TopologicalEntropyClassificationEvidence {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    (T : TopologicalEntropyClassificationPackage M) where
  variationalPrincipleClosed : T.variationalPrinciple
  symbolicCodingClosed : T.symbolicCoding
  entropyUpperBoundClosed : T.entropyUpperBound
  entropyLowerBoundClosed : T.entropyLowerBound

def TopologicalEntropyClassificationClosed {R : RelationCorrespondencePackage}
    {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    (T : TopologicalEntropyClassificationPackage M) : Prop :=
  T.variationalPrinciple ∧ T.symbolicCoding ∧ T.entropyUpperBound ∧ T.entropyLowerBound

theorem topological_entropy_classification_closed_from_evidence
    {R : RelationCorrespondencePackage} {I : IteratedDynamicalSystemPackage R}
    {M : InvariantMeasureTransportPackage I}
    (T : TopologicalEntropyClassificationPackage M)
    (E : TopologicalEntropyClassificationEvidence T) :
    TopologicalEntropyClassificationClosed T := by
  exact And.intro E.variationalPrincipleClosed
    (And.intro E.symbolicCodingClosed
      (And.intro E.entropyUpperBoundClosed E.entropyLowerBoundClosed))

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse