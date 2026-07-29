import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstCyclicCodes
import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstErrorModel

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure ErrorTrappingPackage {A : BurstAdmissibleObject}
    (C : CyclicCodePackage A) (M : BurstErrorModelPackage A) where
  trappingAlgorithm : Prop
  correctionCapability : A.burstLength → Nat
  decoderImplemented : Prop

def ErrorTrappingClosed {A : BurstAdmissibleObject}
    {C : CyclicCodePackage A} {M : BurstErrorModelPackage A}
    (T : ErrorTrappingPackage C M) : Prop :=
  T.trappingAlgorithm ∧ T.decoderImplemented

theorem error_trapping_closed {A : BurstAdmissibleObject}
    {C : CyclicCodePackage A} {M : BurstErrorModelPackage A}
    (T : ErrorTrappingPackage C M) : ErrorTrappingClosed T := by
  exact And.intro T.trappingAlgorithm T.decoderImplemented

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse