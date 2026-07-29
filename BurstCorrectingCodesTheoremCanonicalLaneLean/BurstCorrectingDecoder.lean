import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectingDecoder where
  code : CyclicCodeStructure
  errorModel : BurstErrorModel
  decodingAlgorithm : Type u
  correctsBurstErrors : Prop
  errorDetectingCapability : Prop
  correctsBurstErrorsTerm : correctsBurstErrors
  errorDetectingCapabilityTerm : errorDetectingCapability

structure DecoderEvidence (D : BurstCorrectingDecoder) where
  correctsBurstErrorsClosed : D.correctsBurstErrors
  errorDetectingCapabilityClosed : D.errorDetectingCapability

def DecoderClosed (D : BurstCorrectingDecoder) : Prop :=
  D.correctsBurstErrors ∧ D.errorDetectingCapability

theorem decoder_closed_from_evidence (D : BurstCorrectingDecoder) (E : DecoderEvidence D) : DecoderClosed D := by
  exact And.intro E.correctsBurstErrorsClosed E.errorDetectingCapabilityClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse