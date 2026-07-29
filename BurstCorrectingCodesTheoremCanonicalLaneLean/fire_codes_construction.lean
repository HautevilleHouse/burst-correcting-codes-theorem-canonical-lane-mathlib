import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BurstCorrectingCodesTheoremCanonicalLaneLean.burst_channel_model

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure FireCodeParameters where
  m : ℕ
  p : ℕ
  irreduciblePolynomial : Polynomial (ZMod 2)
  burstLengthB : ℕ
  fireCodeLength : ℕ
  parityCheckMatrix : Matrix (Fin m) (Fin fireCodeLength) (ZMod 2)
  burstCorrectingCapability : Prop
  fireCodeLengthClosed : fireCodeLength = 2^m - 1
  burstCorrectingCapabilityClosed : burstCorrectingCapability

structure FireCodeEvidence (C : FireCodeParameters) where
  fireCodeLengthClosed : C.fireCodeLength = 2^C.m - 1
  burstCorrectingCapabilityClosed : C.burstCorrectingCapability

def FireCodeClosed (C : FireCodeParameters) : Prop :=
  C.fireCodeLength = 2^C.m - 1 ∧ C.burstCorrectingCapability

theorem fire_code_closed_from_evidence (C : FireCodeParameters) (E : FireCodeEvidence C) : FireCodeClosed C := by
  exact And.intro E.fireCodeLengthClosed E.burstCorrectingCapabilityClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse