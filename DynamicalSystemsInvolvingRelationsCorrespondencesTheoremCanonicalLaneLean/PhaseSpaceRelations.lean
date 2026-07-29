import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure PhaseSpaceRelationsPackage where
  phaseSpace : Type u
  relationFamily : Type v
  invarianceProperties : Prop
  topologicalConstraints : Prop
  relationFamilyClosed : Prop

def PhaseSpaceRelationsClosed (P : PhaseSpaceRelationsPackage) : Prop :=
  P.invarianceProperties ∧ P.topologicalConstraints ∧ P.relationFamilyClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
