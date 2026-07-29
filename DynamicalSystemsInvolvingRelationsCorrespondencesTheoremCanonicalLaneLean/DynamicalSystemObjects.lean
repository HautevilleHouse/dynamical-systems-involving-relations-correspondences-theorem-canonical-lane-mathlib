import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure DynamicalSystemAdmittedObject where
  stateSpace : Type
  transitionRelation : stateSpace → stateSpace → Prop
  relationClosed : Prop
  correspondenceProperty : Prop
  conclusion : correspondenceProperty

def DynamicalSystemWitnessClosed (O : DynamicalSystemAdmittedObject) : Prop :=
  O.correspondenceProperty

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse