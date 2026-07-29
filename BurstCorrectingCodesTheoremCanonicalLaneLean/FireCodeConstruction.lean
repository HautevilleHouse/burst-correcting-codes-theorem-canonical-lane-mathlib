import canonicalLaneMathlib.AdmissibleClass
import BurstCorrectingCodesTheoremCanonicalLaneLean.CyclicBurstCodes

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure FireCodePackage {B : BurstErrorPackage} (C : CyclicBurstCodePackage B) where
  generatorPolynomial : Polynomial (Fin B.alphabetSize)
  interleavingDegree : Nat
  maximumBurstLength : Prop
  interleavingStructure : generatorPolynomial.degree * interleavingDegree = C.codeLength
  burstCorrectionGuarantee : maximumBurstLength = B.burstLengthCap

structure FireCodeEvidence {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    (F : FireCodePackage C) where
  maximumBurstLengthClosed : F.maximumBurstLength
  interleavingStructureClosed : F.interleavingStructure
  burstCorrectionGuaranteeClosed : F.burstCorrectionGuarantee

def FireCodeClosed {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    (F : FireCodePackage C) : Prop :=
  F.maximumBurstLength ∧ F.interleavingStructure ∧ F.burstCorrectionGuarantee

theorem fire_code_closed_from_evidence {B : BurstErrorPackage} {C : CyclicBurstCodePackage B}
    (F : FireCodePackage C) (E : FireCodeEvidence F) : FireCodeClosed F := by
  exact And.intro E.maximumBurstLengthClosed
    (And.intro E.interleavingStructureClosed E.burstCorrectionGuaranteeClosed)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse