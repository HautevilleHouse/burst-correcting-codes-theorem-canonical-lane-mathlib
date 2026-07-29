import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstCorrectingCodeConstruction where
  codeLength : ℕ
  dimension : ℕ
  burstCorrectingCapability : ℕ
  decodingAlgorithm : Type u
  constructionAdmissible : Prop

structure BurstCodeConstructionEvidence (C : BurstCorrectingCodeConstruction) where
  codeLengthPositive : C.codeLength > 0
  dimensionPositive : C.dimension > 0
  burstCapabilityPositive : C.burstCorrectingCapability > 0
  decodingAlgorithmDefined : Nonempty C.decodingAlgorithm
  constructionAdmissibleClosed : C.constructionAdmissible

def BurstCodeConstructionClosed (C : BurstCorrectingCodeConstruction) : Prop :=
  C.codeLength > 0 ∧ C.dimension > 0 ∧ C.burstCorrectingCapability > 0 ∧ Nonempty C.decodingAlgorithm ∧ C.constructionAdmissible

theorem burst_code_construction_closed_from_evidence (C : BurstCorrectingCodeConstruction)
    (E : BurstCodeConstructionEvidence C) : BurstCodeConstructionClosed C := by
  exact And.intro E.codeLengthPositive (And.intro E.dimensionPositive (And.intro E.burstCapabilityPositive (And.intro E.decodingAlgorithmDefined E.constructionAdmissibleClosed)))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse