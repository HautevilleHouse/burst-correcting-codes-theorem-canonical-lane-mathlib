import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstErrorModel where
  blockLength : ℕ
  maxBurstLength : ℕ
  errorProbability : ℝ
  modelAdmissible : Prop

structure BurstErrorModelEvidence (M : BurstErrorModel) where
  blockLengthPositive : M.blockLength > 0
  maxBurstLengthPositive : M.maxBurstLength > 0
  errorProbabilityNonnegative : M.errorProbability ≥ 0
  modelAdmissibleClosed : M.modelAdmissible

def BurstErrorModelClosed (M : BurstErrorModel) : Prop :=
  M.blockLength > 0 ∧ M.maxBurstLength > 0 ∧ M.errorProbability ≥ 0 ∧ M.modelAdmissible

theorem burst_error_model_closed_from_evidence (M : BurstErrorModel) (E : BurstErrorModelEvidence M) :
    BurstErrorModelClosed M := by
  exact And.intro E.blockLengthPositive (And.intro E.maxBurstLengthPositive (And.intro E.errorProbabilityNonnegative E.modelAdmissibleClosed))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse