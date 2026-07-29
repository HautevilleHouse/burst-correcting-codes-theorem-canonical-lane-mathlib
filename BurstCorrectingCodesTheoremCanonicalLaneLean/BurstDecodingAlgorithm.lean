import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstDecodingAlgorithm where
  inputSpace : Type u
  outputSpace : Type v
  algorithm : Type w
  decodesCorrectly : Prop
  algorithmAdmissible : Prop

structure BurstDecodingEvidence (A : BurstDecodingAlgorithm) where
  nonemptyInput : Nonempty A.inputSpace
  nonemptyOutput : Nonempty A.outputSpace
  nonemptyAlgorithm : Nonempty A.algorithm
  decodesCorrectlyClosed : A.decodesCorrectly
  algorithmAdmissibleClosed : A.algorithmAdmissible

def BurstDecodingClosed (A : BurstDecodingAlgorithm) : Prop :=
  Nonempty A.inputSpace ∧ Nonempty A.outputSpace ∧ Nonempty A.algorithm ∧ A.decodesCorrectly ∧ A.algorithmAdmissible

theorem burst_decoding_closed_from_evidence (A : BurstDecodingAlgorithm) (E : BurstDecodingEvidence A) :
    BurstDecodingClosed A := by
  exact And.intro E.nonemptyInput (And.intro E.nonemptyOutput (And.intro E.nonemptyAlgorithm (And.intro E.decodesCorrectlyClosed E.algorithmAdmissibleClosed)))

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse