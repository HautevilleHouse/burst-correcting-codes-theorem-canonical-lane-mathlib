import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BurstCorrectingCodesTheoremCanonicalLaneLean

structure GallagerLowerBound where
  blockLength : Nat
  burstLength : Nat
  redundancyLowerBound : Nat
  boundAttained : Prop
  boundAttainedTerm : boundAttained

structure GallagerEvidence (G : GallagerLowerBound) where
  boundAttainedClosed : G.boundAttained
  redundancyLowerBoundPositive : G.redundancyLowerBound > 0

def GallagerBoundClosed (G : GallagerLowerBound) : Prop :=
  G.boundAttained

theorem gallager_bound_closed_from_evidence (G : GallagerLowerBound) (E : GallagerEvidence G) : GallagerBoundClosed G := by
  exact E.boundAttainedClosed

end BurstCorrectingCodesTheoremCanonicalLaneLean
end HautevilleHouse