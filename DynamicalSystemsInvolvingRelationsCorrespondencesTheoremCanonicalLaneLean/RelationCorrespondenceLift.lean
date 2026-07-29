import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure RelationCorrespondencePackage where
  domain : Type u
  codomain : Type v
  relation : domain → domain → Prop
  correspondence : domain → codomain → Prop
  liftCondition : Prop
  pullbackConsistent : Prop
  pushforwardConsistent : Prop

structure RelationCorrespondenceEvidence (R : RelationCorrespondencePackage) where
  liftConditionClosed : R.liftCondition
  pullbackConsistentClosed : R.pullbackConsistent
  pushforwardConsistentClosed : R.pushforwardConsistent

def RelationCorrespondenceClosed (R : RelationCorrespondencePackage) : Prop :=
  R.liftCondition ∧ R.pullbackConsistent ∧ R.pushforwardConsistent

theorem relation_correspondence_closed_from_evidence
    (R : RelationCorrespondencePackage) (E : RelationCorrespondenceEvidence R) :
    RelationCorrespondenceClosed R := by
  exact And.intro E.liftConditionClosed
    (And.intro E.pullbackConsistentClosed E.pushforwardConsistentClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse