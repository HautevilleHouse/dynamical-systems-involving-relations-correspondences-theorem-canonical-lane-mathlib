import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure DynamicalFlow (S : RelationCorrespondenceSpace) where
  timeDomain : Type
  flow : timeDomain → S.carrier → S.carrier
  preservesRelation : ∀ t x y, S.relation x y → S.relation (flow t x) (flow t y)
  preservesCorrespondence : ∀ t x y, S.correspondence x y → S.correspondence (flow t x) (flow t y)

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse