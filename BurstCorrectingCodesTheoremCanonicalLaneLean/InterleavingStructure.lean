import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstErrorModel

/-!
# Interleaving Structure Package
-/

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure InterleavingStructure {M : BurstErrorModel} where
  interleavingDepth : Nat
  interleavingPattern : List Nat
  deinterleavingMap : List Nat
  burstSpread : Prop
  interleavingDepthClosed : interleavingDepth > 0
  interleavingPatternClosed : interleavingPattern.length = interleavingDepth
  deinterleavingMapClosed : deinterleavingMap.length = interleavingDepth
  burstSpreadClosed : burstSpread

structure InterleavingEvidence {M : BurstErrorModel}
    (I : InterleavingStructure M) where
  interleavingDepthClosed : I.interleavingDepth > 0
  interleavingPatternClosed : I.interleavingPattern.length = I.interleavingDepth
  deinterleavingMapClosed : I.deinterleavingMap.length = I.interleavingDepth
  burstSpreadClosed : I.burstSpread

def InterleavingClosed {M : BurstErrorModel}
    (I : InterleavingStructure M) : Prop :=
  I.interleavingDepth > 0 ∧
  I.interleavingPattern.length = I.interleavingDepth ∧
  I.deinterleavingMap.length = I.interleavingDepth ∧
  I.burstSpread

theorem interleaving_closed_from_evidence
    {M : BurstErrorModel} (I : InterleavingStructure M)
    (E : InterleavingEvidence I) : InterleavingClosed I := by
  exact And.intro E.interleavingDepthClosed
    (And.intro E.interleavingPatternClosed
      (And.intro E.deinterleavingMapClosed E.burstSpreadClosed))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse