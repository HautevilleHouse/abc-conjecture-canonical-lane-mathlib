import AbcConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

def ConstrainedAbcClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_abc_closure (A : AdmissibleClass) :
    ConstrainedAbcClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
