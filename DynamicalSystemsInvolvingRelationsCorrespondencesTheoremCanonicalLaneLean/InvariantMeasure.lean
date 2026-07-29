import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.DynamicalFlow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure InvariantMeasure (S : RelationCorrespondenceSpace) (F : DynamicalFlow S) where
  measure : S.carrier → ℝ
  nonnegative : ∀ x, measure x ≥ 0
  totalFinite : ∑' x, measure x < ∞
  invariantUnderFlow : ∀ t x, measure (F.flow t x) = measure x

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse