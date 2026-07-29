import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.burst_channel_model
import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.reed_solomon_burst_decoding

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure CascadedCodeParameters where
  outerCode : ReedSolomonBurstParameters
  innerCode : BurstChannelModel
  burstLengthTotal : ℕ
  interleavingDepthOuter : ℕ
  cascadedBurstGuarantee : Prop
  interleavingDepthOuterClosed : interleavingDepthOuter ≥ outerCode.burstLengthB * innerCode.burstLengthB
  cascadedBurstGuaranteeClosed : cascadedBurstGuarantee

structure CascadedCodeEvidence (C : CascadedCodeParameters) where
  interleavingDepthOuterClosed : C.interleavingDepthOuter ≥ C.outerCode.burstLengthB * C.innerCode.burstLengthB
  cascadedBurstGuaranteeClosed : C.cascadedBurstGuarantee

def CascadedCodeClosed (C : CascadedCodeParameters) : Prop :=
  C.interleavingDepthOuter ≥ C.outerCode.burstLengthB * C.innerCode.burstLengthB ∧ C.cascadedBurstGuarantee

theorem cascaded_code_closed_from_evidence (C : CascadedCodeParameters) (E : CascadedCodeEvidence C) : CascadedCodeClosed C := by
  exact And.intro E.interleavingDepthOuterClosed E.cascadedBurstGuaranteeClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse