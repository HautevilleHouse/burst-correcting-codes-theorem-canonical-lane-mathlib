import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstGateLemmas

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def ConstrainedBurstClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_burst_endgame (A : AdmissibleClass) :
    ConstrainedBurstClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse