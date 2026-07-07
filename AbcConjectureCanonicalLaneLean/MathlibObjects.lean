import AbcConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.GCD.Basic

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AbcTriple where
  a : Nat
  b : Nat
  c : Nat
  coprime_ab : Nat.Coprime a b
  sum_eq : a + b = c

structure AbcHeightData where
  radical : Nat
  height : Nat
  constant : Nat

structure AbcAdmittedObject where
  triple : AbcTriple
  heightData : AbcHeightData
  admissibleBound : heightData.height <= heightData.constant * heightData.radical

structure AbcEndgameState where
  object : AbcAdmittedObject

def AbcBoundClosed (O : AbcAdmittedObject) : Prop :=
  O.heightData.height <= O.heightData.constant * O.heightData.radical

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
