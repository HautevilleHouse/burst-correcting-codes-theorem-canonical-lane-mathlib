import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def BurstCodeAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem burst_code_admissible_endgame (A : AdmissibleClass) :
    BurstCodeAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse