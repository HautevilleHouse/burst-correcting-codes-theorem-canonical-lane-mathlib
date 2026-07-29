import BurstCorrectingCodesTheoremCanonicalLaneLean.BurstAdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BurstWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.burstCorrectingProperty

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse