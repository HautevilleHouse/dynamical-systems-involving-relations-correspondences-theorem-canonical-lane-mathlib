import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.CorrespondenceClosure

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

def ConstrainedCorrespondenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_correspondence_endgame (A : AdmissibleClass) :
    ConstrainedCorrespondenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse