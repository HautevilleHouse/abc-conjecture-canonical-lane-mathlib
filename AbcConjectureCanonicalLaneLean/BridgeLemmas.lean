import AbcConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbcBoundClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissibleBound

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
