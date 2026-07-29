import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstAdmittedObject where
  codeSpace : Type u
  burstLength : ℕ
  errorPattern : List (List ℕ)
  corrected : Prop
  conclusion : corrected

structure BurstAdmissibleClass where
  object : BurstAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BurstAdmissibleClass) : Prop :=
  BurstWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse