import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstAdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure CyclicCodePackage (A : BurstAdmissibleObject) where
  generatorPolynomial : List (Fin 2)
  codewordSet : A.codewords
  cyclicShiftInvariant : Prop
  burstPatterns : A.burstLength → List (List (Fin A.codeLength))

def CyclicCodeClosed {A : BurstAdmissibleObject} (C : CyclicCodePackage A) : Prop :=
  C.cyclicShiftInvariant

theorem cyclic_code_closed {A : BurstAdmissibleObject} (C : CyclicCodePackage A) :
    CyclicCodeClosed C := by
  exact C.cyclicShiftInvariant

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse