import AbcConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def abcProjection : Projection AbcEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem abc_projection_idempotent (x : AbcEndgameState) :
    abcProjection.toFun (abcProjection.toFun x) = abcProjection.toFun x := by
  exact abcProjection.idempotent x

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
