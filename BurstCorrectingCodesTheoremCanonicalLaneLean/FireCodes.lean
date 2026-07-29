import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure FireCode where
  n : Nat  -- code length
  m : Nat  -- degree of irreducible polynomial
  p : Nat  -- period of p(x)
  generatorPolynomial : Polynomial ℤ
  burstCorrectingCapability : Nat

structure FireCodeEvidence (F : FireCode) where
  burstCorrectingCapabilityClosed : F.burstCorrectingCapability = (F.m + 1) / 2
  generatorIrreducible : Irreducible F.generatorPolynomial

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse