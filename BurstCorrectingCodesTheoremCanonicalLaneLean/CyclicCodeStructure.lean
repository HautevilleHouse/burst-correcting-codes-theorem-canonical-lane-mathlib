import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure CyclicCodeStructure where
  field : Type u
  ring : Ring field
  generatorPolynomial : Polynomial field
  degree : Nat
  codeDimension : Nat
  generatorPrimitive : Prop
  generatorPrimitiveTerm : generatorPrimitive

structure CyclicCodeEvidence (C : CyclicCodeStructure) where
  generatorPrimitiveClosed : C.generatorPrimitive
  degreePositive : C.degree > 0
  codeDimensionPositive : C.codeDimension > 0

def CyclicCodeClosed (C : CyclicCodeStructure) : Prop :=
  C.generatorPrimitive

theorem cyclic_code_closed_from_evidence (C : CyclicCodeStructure) (E : CyclicCodeEvidence C) : CyclicCodeClosed C := by
  exact E.generatorPrimitiveClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse