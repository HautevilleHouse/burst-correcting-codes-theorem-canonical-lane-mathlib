import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstErrorModel

/-!
# Burst Correction Capability Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectionCapabilityPackage {B : BurstErrorModelPackage}
    (E : BurstErrorModelEvidence B) where
  codeDimension : ℕ
  redundancy : ℕ
  correctionRadius : ℕ
  codeExists : Prop
  correctionGuaranteed : Prop

structure BurstCorrectionCapabilityEvidence {B : BurstErrorModelPackage}
    {E : BurstErrorModelEvidence B}
    (C : BurstCorrectionCapabilityPackage E) where
  codeExistsClosed : C.codeExists
  correctionGuaranteedClosed : C.correctionGuaranteed

def BurstCorrectionCapabilityClosed {B : BurstErrorModelPackage}
    {E : BurstErrorModelEvidence B}
    (C : BurstCorrectionCapabilityPackage E) : Prop :=
  C.codeExists ∧ C.correctionGuaranteed

theorem burst_correction_capability_closed_from_evidence
    {B : BurstErrorModelPackage} {E : BurstErrorModelEvidence B}
    (C : BurstCorrectionCapabilityPackage E)
    (Ev : BurstCorrectionCapabilityEvidence C) : BurstCorrectionCapabilityClosed C := by
  exact And.intro Ev.codeExistsClosed Ev.correctionGuaranteedClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse