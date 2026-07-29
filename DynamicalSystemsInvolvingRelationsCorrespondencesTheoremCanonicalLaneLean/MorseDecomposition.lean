import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.InvariantMeasureExistence

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure MorseDecompositionPackage {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP} where
  morseSets : List (Set P.phaseSpace)
  ordering : P.phaseSpace → P.phaseSpace → Prop
  recurrenceProperties : Prop
  decompositionClosed : Prop

def MorseDecompositionClosed {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    {IM : InvariantMeasureExistencePackage P F FP}
    (MD : MorseDecompositionPackage P F FP IM) : Prop :=
  MD.recurrenceProperties ∧ MD.decompositionClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
