import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure RelationInvariantMap where
  sourceSet : Type u
  targetSet : Type u
  relation : sourceSet → sourceSet → Prop
  invariantStructure : sourceSet → Prop
  mapping : sourceSet → targetSet
  respectsRelation : ∀ x y, relation x y → invariantStructure x → invariantStructure y
  mapCompatible : ∀ x y, relation x y → mapping x = mapping y

structure RelationInvariantMapEvidence (R : RelationInvariantMap) where
  respectsRelationClosed : R.respectsRelation
  mapCompatibleClosed : R.mapCompatible

def RelationInvariantMapClosed (R : RelationInvariantMap) : Prop :=
  R.respectsRelation ∧ R.mapCompatible

theorem relation_invariant_map_closed_from_evidence (R : RelationInvariantMap) (E : RelationInvariantMapEvidence R) :
    RelationInvariantMapClosed R := by
  exact And.intro E.respectsRelationClosed E.mapCompatibleClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
