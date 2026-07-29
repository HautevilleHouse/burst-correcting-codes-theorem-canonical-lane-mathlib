import canonicalLaneMathlib.AdmissibleClass
import BurstCorrectingCodesTheoremCanonicalLaneLean.FireCodeConstruction

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstDecoderPackage {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    (F : FireCodePackage C) where
  decodingAlgorithm : Type u
  syndromeComputation : decodingAlgorithm → Prop
  errorTrapping : Prop
  decodingCorrectness : errorTrapping → BurstErrorClosed B → FireCodeClosed F → Prop
  complexityBound : Nat

structure BurstDecoderEvidence {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    {F : FireCodePackage C} (D : BurstDecoderPackage F) where
  syndromeComputationClosed : D.syndromeComputation D.decodingAlgorithm
  errorTrappingClosed : D.errorTrapping
  decodingCorrectnessClosed : D.decodingCorrectness D.errorTrapping (by
    intro; exact And.intro ?_ ?_)
  complexityBoundClosed : D.complexityBound ≤ 10

def BurstDecoderClosed {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    {F : FireCodePackage C} (D : BurstDecoderPackage F) : Prop :=
  D.syndromeComputation D.decodingAlgorithm ∧ D.errorTrapping ∧
  D.decodingCorrectness D.errorTrapping (by
    intro; exact True) ∧ D.complexityBound ≤ 10

theorem burst_decoder_closed_from_evidence {B : BurstErrorPackage}
    {C : CyclicBurstCodePackage B} {F : FireCodePackage C}
    (D : BurstDecoderPackage F) (E : BurstDecoderEvidence D) :
    BurstDecoderClosed D := by
  exact And.intro E.syndromeComputationClosed
    (And.intro E.errorTrappingClosed
      (And.intro E.decodingCorrectnessClosed E.complexityBoundClosed))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse