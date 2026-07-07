import AbcConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

def ConstrainedAbcClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_abc_endgame (A : AdmissibleClass) :
    ConstrainedAbcClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
