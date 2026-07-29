import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure CyclicBurstCorrectingCode (E : BurstErrorModel) where
  generatorPolynomial : Polynomial (ZMod 2)
  codeLength : Nat
  burstCorrectingCapability : Prop
  cyclicStructure : Prop
  syndromeDecoding : Prop

structure CyclicCodeEvidence (C : CyclicBurstCorrectingCode E) where
  burstCorrectingCapabilityClosed : C.burstCorrectingCapability
  cyclicStructureClosed : C.cyclicStructure
  syndromeDecodingClosed : C.syndromeDecoding

def CyclicCodeClosed (C : CyclicBurstCorrectingCode E) : Prop :=
  C.burstCorrectingCapability ∧ C.cyclicStructure ∧ C.syndromeDecoding

theorem cyclic_code_closed_from_evidence (C : CyclicBurstCorrectingCode E)
    (ev : CyclicCodeEvidence C) : CyclicCodeClosed C := by
  exact And.intro ev.burstCorrectingCapabilityClosed
    (And.intro ev.cyclicStructureClosed ev.syndromeDecodingClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse