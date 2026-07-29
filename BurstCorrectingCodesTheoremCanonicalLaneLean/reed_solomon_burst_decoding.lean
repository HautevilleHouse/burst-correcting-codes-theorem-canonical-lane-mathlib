import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.burst_channel_model

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure ReedSolomonBurstParameters where
  q : ℕ
  n : ℕ
  k : ℕ
  burstLengthB : ℕ
  evaluationSet : Finset (Fin q)
  generatorPolynomial : Polynomial (Fin q)
  interleavingDepth : ℕ
  burstDecodingGuaranteed : Prop
  interleavingDepthClosed : interleavingDepth ≥ burstLengthB
  burstDecodingGuaranteedClosed : burstDecodingGuaranteed

structure ReedSolomonBurstEvidence (C : ReedSolomonBurstParameters) where
  interleavingDepthClosed : C.interleavingDepth ≥ C.burstLengthB
  burstDecodingGuaranteedClosed : C.burstDecodingGuaranteed

def ReedSolomonBurstClosed (C : ReedSolomonBurstParameters) : Prop :=
  C.interleavingDepth ≥ C.burstLengthB ∧ C.burstDecodingGuaranteed

theorem reed_solomon_burst_closed_from_evidence (C : ReedSolomonBurstParameters) (E : ReedSolomonBurstEvidence C) : ReedSolomonBurstClosed C := by
  exact And.intro E.interleavingDepthClosed E.burstDecodingGuaranteedClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse