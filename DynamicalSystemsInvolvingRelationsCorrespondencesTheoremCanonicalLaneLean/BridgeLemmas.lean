import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O : DynamicalAdmissibleObject := A.object
  O.endogenousClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A with
  | { object := O, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => O.endogenousClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse