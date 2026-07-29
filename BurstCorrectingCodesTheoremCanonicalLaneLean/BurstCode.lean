import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectingCode where
  alphabet : Type u
  blockLength : Nat
  burstLength : Nat
  encoding : alphabet ^ blockLength → alphabet ^ (blockLength + redundancy)
  decoding : alphabet ^ (blockLength + redundancy) → alphabet ^ blockLength
  correctsBurstErrors : Prop
  redundancy : Nat

def burstCorrectingCapacity (code : BurstCorrectingCode) : Prop :=
  code.correctsBurstErrors ∧ code.burstLength ≤ code.blockLength

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse