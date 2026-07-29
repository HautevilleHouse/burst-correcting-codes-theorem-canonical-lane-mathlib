import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstDistanceBound where
  code : CyclicCodeStructure
  errorModel : BurstErrorModel
  burstDistance : Nat
  burstDistanceLowerBound : Prop
  burstDistanceUpperBound : Prop
  burstDistanceLowerBoundTerm : burstDistanceLowerBound
  burstDistanceUpperBoundTerm : burstDistanceUpperBound

structure BurstDistanceEvidence (B : BurstDistanceBound) where
  burstDistanceLowerBoundClosed : B.burstDistanceLowerBound
  burstDistanceUpperBoundClosed : B.burstDistanceUpperBound

def BurstDistanceClosed (B : BurstDistanceBound) : Prop :=
  B.burstDistanceLowerBound ∧ B.burstDistanceUpperBound

theorem burst_distance_closed_from_evidence (B : BurstDistanceBound) (E : BurstDistanceEvidence B) : BurstDistanceClosed B := by
  exact And.intro E.burstDistanceLowerBoundClosed E.burstDistanceUpperBoundClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse