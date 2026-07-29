import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def bridgeClosed (A : BurstAdmissibleClass) : Prop :=
  BurstWitnessClosed A.object

theorem bridge_from_admissible_class (A : BurstAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse