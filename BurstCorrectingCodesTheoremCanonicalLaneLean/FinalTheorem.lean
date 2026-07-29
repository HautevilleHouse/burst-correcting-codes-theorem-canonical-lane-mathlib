import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def ConstrainedBurstCorrectingCodesClosure (A : BurstAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_burst_correcting_codes_endgame (A : BurstAdmissibleClass) :
    ConstrainedBurstCorrectingCodesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse