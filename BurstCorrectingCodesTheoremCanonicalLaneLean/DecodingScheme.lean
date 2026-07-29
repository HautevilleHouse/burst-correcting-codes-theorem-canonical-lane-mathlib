import BurstCorrectingCodesTheoremCanonicalLaneLean.InterleavingStructure

/-!
# Decoding Scheme Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure DecodingScheme {M : BurstErrorModel} {I : InterleavingStructure M} where
  correctionAlgorithm : Type u
  errorDetectionCapability : Prop
  correctionCapability : Prop
  decodingLatency : Prop
  correctionAlgorithmClosed : correctionAlgorithm
  errorDetectionCapabilityClosed : errorDetectionCapability
  correctionCapabilityClosed : correctionCapability
  decodingLatencyClosed : decodingLatency

structure DecodingEvidence {M : BurstErrorModel} {I : InterleavingStructure M}
    (D : DecodingScheme I) where
  correctionAlgorithmClosed : D.correctionAlgorithm
  errorDetectionCapabilityClosed : D.errorDetectionCapability
  correctionCapabilityClosed : D.correctionCapability
  decodingLatencyClosed : D.decodingLatency

def DecodingClosed {M : BurstErrorModel} {I : InterleavingStructure M}
    (D : DecodingScheme I) : Prop :=
  D.correctionAlgorithm ∧ D.errorDetectionCapability ∧
  D.correctionCapability ∧ D.decodingLatency

theorem decoding_closed_from_evidence
    {M : BurstErrorModel} {I : InterleavingStructure M}
    (D : DecodingScheme I) (E : DecodingEvidence D) :
    DecodingClosed D := by
  exact And.intro E.correctionAlgorithmClosed
    (And.intro E.errorDetectionCapabilityClosed
      (And.intro E.correctionCapabilityClosed E.decodingLatencyClosed))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse