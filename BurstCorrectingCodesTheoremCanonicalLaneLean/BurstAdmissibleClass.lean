import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstAdmissibleObject where
  burstLength : Nat
  codeLength : Nat
  codewords : Type u
  encodes : codewords → List (Fin codeLength) → Prop
  burstCorrectingProperty : Prop

structure AdmissibleClass where
  object : BurstAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BurstWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse