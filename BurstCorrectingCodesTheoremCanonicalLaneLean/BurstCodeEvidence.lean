import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCodeEvidence (code : BurstCorrectingCode) where
  correctsBurstErrorsClosed : code.correctsBurstErrors
  burstLengthBoundClosed : code.burstLength ≤ code.blockLength

def BurstCodeClosed (code : BurstCorrectingCode) : Prop :=
  code.correctsBurstErrors ∧ code.burstLength ≤ code.blockLength

theorem burst_code_closed_from_evidence (code : BurstCorrectingCode) (E : BurstCodeEvidence code) :
    BurstCodeClosed code := by
  exact And.intro E.correctsBurstErrorsClosed E.burstLengthBoundClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse