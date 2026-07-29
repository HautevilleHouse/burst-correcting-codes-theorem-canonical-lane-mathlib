import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure BurstChannelModel where
  fieldChar : ℕ
  burstLengthB : ℕ
  guardBandG : ℕ
  channelInput : Type u
  channelOutput : Type u
  burstErrorSet : Prop
  errorFreeGuard : Prop
  burstErrorSetClosed : burstErrorSet
  errorFreeGuardClosed : errorFreeGuard

structure BurstChannelEvidence (C : BurstChannelModel) where
  burstErrorSetClosed : C.burstErrorSet
  errorFreeGuardClosed : C.errorFreeGuard

def BurstChannelClosed (C : BurstChannelModel) : Prop :=
  C.burstErrorSet ∧ C.errorFreeGuard

theorem burst_channel_closed_from_evidence (C : BurstChannelModel) (E : BurstChannelEvidence C) : BurstChannelClosed C := by
  exact And.intro E.burstErrorSetClosed E.errorFreeGuardClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse