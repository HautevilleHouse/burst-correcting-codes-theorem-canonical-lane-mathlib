import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectingCodesTheoremStatement where
  capacityBound : BurstCorrectingCapacityBound
  codeConstruction : BurstCorrectingCodeConstruction
  decodingAlgorithm : BurstDecodingAlgorithm
  errorModel : BurstErrorModel
  theoremAdmissible : Prop

def BurstCorrectingCodesTheoremClosed (S : BurstCorrectingCodesTheoremStatement) : Prop :=
  BurstCapacityBoundClosed S.capacityBound ∧
  BurstCodeConstructionClosed S.codeConstruction ∧
  BurstDecodingClosed S.decodingAlgorithm ∧
  BurstErrorModelClosed S.errorModel ∧
  S.theoremAdmissible

theorem burst_correcting_codes_theorem_closed_from_evidence
    (S : BurstCorrectingCodesTheoremStatement)
    (capE : BurstCapacityBoundEvidence S.capacityBound)
    (codeE : BurstCodeConstructionEvidence S.codeConstruction)
    (decE : BurstDecodingEvidence S.decodingAlgorithm)
    (errE : BurstErrorModelEvidence S.errorModel)
    (thmAdm : S.theoremAdmissible) :
    BurstCorrectingCodesTheoremClosed S := by
  refine And.intro (burst_capacity_bound_closed_from_evidence S.capacityBound capE)
    (And.intro (burst_code_construction_closed_from_evidence S.codeConstruction codeE)
      (And.intro (burst_decoding_closed_from_evidence S.decodingAlgorithm decE)
        (And.intro (burst_error_model_closed_from_evidence S.errorModel errE) thmAdm)))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse