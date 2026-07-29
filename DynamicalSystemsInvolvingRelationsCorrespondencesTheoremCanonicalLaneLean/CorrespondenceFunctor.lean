import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure CorrespondenceFunctor where
  sourceCategory : Type u
  targetCategory : Type u
  objectMap : sourceCategory → targetCategory
  morphismMap : ∀ (A B : sourceCategory), (A → B → Prop) → (objectMap A → objectMap B → Prop)
  respectsIdentity : ∀ A, morphismMap A A (λ x y => x = y) = (λ x y => x = y)
  respectsComposition : ∀ A B C f g, morphismMap A C (λ x z => ∃ y, f x y ∧ g y z) = λ u w => ∃ v, morphismMap A B f u v ∧ morphismMap B C g v w

structure CorrespondenceFunctorEvidence (F : CorrespondenceFunctor) where
  respectsIdentityClosed : F.respectsIdentity
  respectsCompositionClosed : F.respectsComposition

def CorrespondenceFunctorClosed (F : CorrespondenceFunctor) : Prop :=
  F.respectsIdentity ∧ F.respectsComposition

theorem correspondence_functor_closed_from_evidence (F : CorrespondenceFunctor) (E : CorrespondenceFunctorEvidence F) :
    CorrespondenceFunctorClosed F := by
  exact And.intro E.respectsIdentityClosed E.respectsCompositionClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
