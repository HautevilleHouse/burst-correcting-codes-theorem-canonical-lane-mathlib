import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure InterleavingTechnique {E : BurstErrorModel}
    (C : BurstCorrectingCodeConstruction E) where
  interleavingDepth : Nat
  interleavedEncoder : List Bool → List Bool
  burstErrorDispersion : Prop
  errorCorrectionAfterDeinterleave : Prop
  interleavingParametersOptimal : Prop

structure InterleavingEvidence {E : BurstErrorModel}
    {C : BurstCorrectingCodeConstruction E}
    (I : InterleavingTechnique C) where
  burstErrorDispersionClosed : I.burstErrorDispersion
  errorCorrectionAfterDeinterleaveClosed : I.errorCorrectionAfterDeinterleave
  interleavingParametersOptimalClosed : I.interleavingParametersOptimal

def InterleavingClosed {E : BurstErrorModel}
    {C : BurstCorrectingCodeConstruction E}
    (I : InterleavingTechnique C) : Prop :=
  I.burstErrorDispersion ∧ I.errorCorrectionAfterDeinterleave ∧
  I.interleavingParametersOptimal

theorem interleaving_closed_from_evidence
    {E : BurstErrorModel} {C : BurstCorrectingCodeConstruction E}
    (I : InterleavingTechnique C) (ev : InterleavingEvidence I) :
    InterleavingClosed I := by
  exact And.intro ev.burstErrorDispersionClosed
    (And.intro ev.errorCorrectionAfterDeinterleaveClosed
      ev.interleavingParametersOptimalClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse