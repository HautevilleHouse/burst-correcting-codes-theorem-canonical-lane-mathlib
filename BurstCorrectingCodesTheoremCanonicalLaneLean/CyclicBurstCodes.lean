import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure CyclicBurstCode where
  n : Nat
  k : Nat
  generatorPolynomial : Polynomial ℤ
  burstErrorCapacity : Nat

structure CyclicBurstCodeEvidence (C : CyclicBurstCode) where
  generatorDividesXPowerNMinusOne : C.generatorPolynomial ∣ (Polynomial.monomial 1 1)^C.n - 1
  burstErrorCapacityClosed : C.burstErrorCapacity = (C.n - C.k) / 2

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse