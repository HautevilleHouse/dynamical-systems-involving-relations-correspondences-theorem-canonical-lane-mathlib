import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.CorrespondenceIteration

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure DynamicalAdmissibleObject where
  system : RelationCorrespondenceSystem
  attractor : AttractorPackage system
  iteration : IterationPackage attractor
  endogenousClosed : AttractorClosed attractor
  iterationClosed : IterationClosed iteration

def DynamicalAdmissibleObjectClosed (O : DynamicalAdmissibleObject) : Prop :=
  O.endogenousClosed ∧ O.iterationClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse