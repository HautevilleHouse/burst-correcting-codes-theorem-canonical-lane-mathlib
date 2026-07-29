import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectingCapacityBound where
  codeLength : ℕ
  burstLength : ℕ
  upperBound : ℕ
  lowerBound : ℕ
  boundAdmissible : Prop

structure BurstCapacityBoundEvidence (B : BurstCorrectingCapacityBound) where
  upperBoundAtLeastLower : B.upperBound ≥ B.lowerBound
  boundsPositive : B.upperBound > 0
  boundAdmissibleClosed : B.boundAdmissible

def BurstCapacityBoundClosed (B : BurstCorrectingCapacityBound) : Prop :=
  B.upperBound ≥ B.lowerBound ∧ B.upperBound > 0 ∧ B.boundAdmissible

theorem burst_capacity_bound_closed_from_evidence (B : BurstCorrectingCapacityBound)
    (E : BurstCapacityBoundEvidence B) : BurstCapacityBoundClosed B := by
  exact And.intro E.upperBoundAtLeastLower (And.intro E.boundsPositive E.boundAdmissibleClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse