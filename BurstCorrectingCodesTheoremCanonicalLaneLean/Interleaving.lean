import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure Interleaver where
  depth : Nat
  blockSize : Nat

def interleavedBurstLength (interleaver : Interleaver) (originalBurst : Nat) : Nat :=
  interleaver.depth * originalBurst

structure InterleavingScheme where
  interleaver : Interleaver
  codeWordLength : Nat
  burstCorrectingCapability : Nat

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse