import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstCorrectionCapability

/-!
# Berlekamp-Massey Algorithm Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BerlekampMasseyAlgorithmPackage {B : BurstErrorModelPackage}
    {E : BurstErrorModelEvidence B} {C : BurstCorrectionCapabilityPackage E}
    (Ev : BurstCorrectionCapabilityEvidence C) where
  linearFeedbackShiftRegister : Type u
  syndromeComputation : Prop
  errorLocatorPolynomial : Prop
  decodability : Prop

structure BerlekampMasseyAlgorithmEvidence {B : BurstErrorModelPackage}
    {E : BurstErrorModelEvidence B} {C : BurstCorrectionCapabilityPackage E}
    {Ev : BurstCorrectionCapabilityEvidence C}
    (BMA : BerlekampMasseyAlgorithmPackage Ev) where
  syndromeComputationClosed : BMA.syndromeComputation
  errorLocatorPolynomialClosed : BMA.errorLocatorPolynomial
  decodabilityClosed : BMA.decodability

def BerlekampMasseyAlgorithmClosed {B : BurstErrorModelPackage}
    {E : BurstErrorModelEvidence B} {C : BurstCorrectionCapabilityPackage E}
    {Ev : BurstCorrectionCapabilityEvidence C}
    (BMA : BerlekampMasseyAlgorithmPackage Ev) : Prop :=
  BMA.syndromeComputation ∧ BMA.errorLocatorPolynomial ∧ BMA.decodability

theorem berlekamp_massey_algorithm_closed_from_evidence
    {B : BurstErrorModelPackage} {E : BurstErrorModelEvidence B}
    {C : BurstCorrectionCapabilityPackage E} {Ev : BurstCorrectionCapabilityEvidence C}
    (BMA : BerlekampMasseyAlgorithmPackage Ev)
    (BMAEv : BerlekampMasseyAlgorithmEvidence BMA) : BerlekampMasseyAlgorithmClosed BMA := by
  exact And.intro BMAEv.syndromeComputationClosed
    (And.intro BMAEv.errorLocatorPolynomialClosed BMAEv.decodabilityClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse