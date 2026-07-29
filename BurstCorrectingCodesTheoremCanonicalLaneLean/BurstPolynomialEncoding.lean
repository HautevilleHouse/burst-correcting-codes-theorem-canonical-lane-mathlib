import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.BurstErrorModel

/-!
# Burst Polynomial Encoding Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstPolynomialEncodingPackage {B : BurstErrorModelPackage}
  (E : BurstErrorModelEvidence B) where
  encodingPolynomial : Polynomial ℤ
  degreeBound : ℕ
  burstCorrectingCapability : Prop
  polynomialIrreducibility : Prop

structure BurstPolynomialEncodingEvidence {B : BurstErrorModelPackage}
  {E : BurstErrorModelEvidence B}
  (P : BurstPolynomialEncodingPackage E) where
  degreeBoundClosed : P.degreeBound = B.burstLength
  burstCorrectingCapabilityClosed : P.burstCorrectingCapability
  polynomialIrreducibilityClosed : P.polynomialIrreducibility

def BurstPolynomialEncodingClosed {B : BurstErrorModelPackage}
  {E : BurstErrorModelEvidence B}
  (P : BurstPolynomialEncodingPackage E) : Prop :=
  P.degreeBound = B.burstLength ∧ P.burstCorrectingCapability ∧ P.polynomialIrreducibility

theorem burst_polynomial_encoding_closed_from_evidence
  {B : BurstErrorModelPackage} {E : BurstErrorModelEvidence B}
  (P : BurstPolynomialEncodingPackage E)
  (PE : BurstPolynomialEncodingEvidence P) : BurstPolynomialEncodingClosed P := by
  exact And.intro PE.degreeBoundClosed
    (And.intro PE.burstCorrectingCapabilityClosed PE.polynomialIrreducibilityClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse