import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure RelationCorrespondenceSpace where
  carrier : Type
  relation : carrier → carrier → Prop
  correspondence : carrier → carrier → Prop
  internalAdmissibility : Prop

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse