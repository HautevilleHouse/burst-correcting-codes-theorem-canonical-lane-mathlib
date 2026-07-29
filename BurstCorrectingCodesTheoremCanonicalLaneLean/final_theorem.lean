import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.cascaded_codes_burst

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def BurstCorrectingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem burst_correcting_endgame (A : AdmissibleClass) : BurstCorrectingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse