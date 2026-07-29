import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstErrorCorrectionBound (E : BurstErrorModel) where
  maximumCorrectableBurstLength : Nat
  redundancyRequired : Nat
  reigerBoundSatisfied : Prop
  optimalCodesExist : Prop

structure BurstBoundEvidence (B : BurstErrorCorrectionBound E) where
  reigerBoundSatisfiedClosed : B.reigerBoundSatisfied
  optimalCodesExistClosed : B.optimalCodesExist

def BurstBoundClosed (B : BurstErrorCorrectionBound E) : Prop :=
  B.reigerBoundSatisfied ∧ B.optimalCodesExist

theorem burst_bound_closed_from_evidence (B : BurstErrorCorrectionBound E)
    (ev : BurstBoundEvidence B) : BurstBoundClosed B := by
  exact And.intro ev.reigerBoundSatisfiedClosed ev.optimalCodesExistClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse