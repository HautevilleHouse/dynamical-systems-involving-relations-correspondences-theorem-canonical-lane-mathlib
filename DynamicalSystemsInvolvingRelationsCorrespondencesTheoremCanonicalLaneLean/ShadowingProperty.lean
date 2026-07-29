import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.MorseDecomposition

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure ShadowingPropertyPackage {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP}
    {MD : MorseDecompositionPackage P F FP IM} where
  shadowingDistance : ℝ
  approximationError : ℝ
  shadowingClosed : Prop

def ShadowingPropertyClosed {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP}
    {MD : MorseDecompositionPackage P F FP IM}
    (SP : ShadowingPropertyPackage P F FP IM MD) : Prop :=
  SP.shadowingClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
