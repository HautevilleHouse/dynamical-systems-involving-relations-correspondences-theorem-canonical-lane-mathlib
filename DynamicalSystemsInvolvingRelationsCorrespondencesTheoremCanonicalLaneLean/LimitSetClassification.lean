import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.ShadowingProperty

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure LimitSetClassificationPackage {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP}
    {MD : MorseDecompositionPackage P F FP IM}
    {SP : ShadowingPropertyPackage P F FP IM MD} where
  omegaLimitSets : Set (Set P.phaseSpace)
  alphaLimitSets : Set (Set P.phaseSpace)
  classificationClosed : Prop

def LimitSetClassificationClosed {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP}
    {MD : MorseDecompositionPackage P F FP IM}
    {SP : ShadowingPropertyPackage P F FP IM MD}
    (LC : LimitSetClassificationPackage P F FP IM MD SP) : Prop :=
  LC.classificationClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
