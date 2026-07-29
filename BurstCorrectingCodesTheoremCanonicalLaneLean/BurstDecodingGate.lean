import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.BurstPolynomialEncoding

/-!
# Burst Decoding Gate Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstDecodingGatePackage {B : BurstErrorModelPackage}
  {E : BurstErrorModelEvidence B}
  {P : BurstPolynomialEncodingPackage E} where
  syndromeComputation : Type u
  errorLocationAlgorithm : Prop
  burstCorrectionProcedure : Prop
  decodingSuccessGuarantee : Prop

structure BurstDecodingGateEvidence {B : BurstErrorModelPackage}
  {E : BurstErrorModelEvidence B}
  {P : BurstPolynomialEncodingPackage E}
  (G : BurstDecodingGatePackage P) where
  syndromeComputationClosed : True
  errorLocationAlgorithmClosed : G.errorLocationAlgorithm
  burstCorrectionProcedureClosed : G.burstCorrectionProcedure
  decodingSuccessGuaranteeClosed : G.decodingSuccessGuarantee

def BurstDecodingGateClosed {B : BurstErrorModelPackage}
  {E : BurstErrorModelEvidence B}
  {P : BurstPolynomialEncodingPackage E}
  (G : BurstDecodingGatePackage P) : Prop :=
  G.errorLocationAlgorithm ∧ G.burstCorrectionProcedure ∧ G.decodingSuccessGuarantee

theorem burst_decoding_gate_closed_from_evidence
  {B : BurstErrorModelPackage} {E : BurstErrorModelEvidence B}
  {P : BurstPolynomialEncodingPackage E}
  (G : BurstDecodingGatePackage P)
  (GE : BurstDecodingGateEvidence G) : BurstDecodingGateClosed G := by
  exact And.intro GE.errorLocationAlgorithmClosed
    (And.intro GE.burstCorrectionProcedureClosed GE.decodingSuccessGuaranteeClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse