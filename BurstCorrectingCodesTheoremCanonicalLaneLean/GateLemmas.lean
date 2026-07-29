import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

def gateClosed (A : BurstAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BurstAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse