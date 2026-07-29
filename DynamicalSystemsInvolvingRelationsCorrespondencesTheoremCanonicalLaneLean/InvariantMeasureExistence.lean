import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean.FixedPointAdmissibility

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean

structure InvariantMeasureExistencePackage {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F} where
  invariantMeasure : P.phaseSpace → ℝ
  normalization : Prop
  measurePreservation : Prop
  existenceClosed : Prop

def InvariantMeasureExistenceClosed {P : PhaseSpaceRelationsPackage}
    {F : CorrespondenceFlowPackage P} {FP : FixedPointAdmissibilityPackage P F}
    (IM : InvariantMeasureExistencePackage P F FP) : Prop :=
  IM.normalization ∧ IM.measurePreservation ∧ IM.existenceClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesTheoremCanonicalLaneLean
end HautevilleHouse
