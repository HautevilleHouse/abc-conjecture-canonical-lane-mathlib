import AbcConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbcArithmeticGeometrySubstrateClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.admissibleBound,
    A.object.radicalSupportWitness,
    A.object.localObstructionsWitness,
    A.object.arithmeticGeometryBridgeWitness,
    A.object.mathlibHeightModelWitness,
    A.object.classicalRemainderCarried⟩

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
