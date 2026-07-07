import AbcConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.NumberTheory.Divisors
import Mathlib.NumberTheory.Height.Basic

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u

noncomputable def AbcMathlibTupleHeight {K : Type u} [Field K]
    [Height.AdmissibleAbsValues K] (x : Fin 3 -> K) : ℝ :=
  Height.mulHeight x

theorem abc_mathlib_tuple_height_nonnegative {K : Type u} [Field K]
    [Height.AdmissibleAbsValues K] (x : Fin 3 -> K) :
    0 <= AbcMathlibTupleHeight x := by
  exact (Height.mulHeight_pos x).le

structure AbcTriple where
  a : Nat
  b : Nat
  c : Nat
  aPositive : 0 < a
  bPositive : 0 < b
  cPositive : 0 < c
  coprimeAB : Nat.Coprime a b
  sumEq : a + b = c

structure AbcRadicalCertificate where
  triple : AbcTriple
  radical : Nat
  radicalPositive : 0 < radical
  everyPrimeFactorCovered :
    forall p : Nat,
      Nat.Prime p ->
      (p ∣ triple.a ∨ p ∣ triple.b ∨ p ∣ triple.c) ->
      p ∣ radical
  noExtraneousPrimeFactor :
    forall p : Nat,
      Nat.Prime p ->
      p ∣ radical ->
      p ∣ triple.a ∨ p ∣ triple.b ∨ p ∣ triple.c

structure AbcHeightData where
  height : Nat
  constant : Nat
  exponentNumerator : Nat
  exponentDenominator : Nat
  heightDominatesC : Nat -> Prop
  constantPositive : 0 < constant
  exponentDenominatorPositive : 0 < exponentDenominator

structure AbcAdmittedObject where
  radicalData : AbcRadicalCertificate
  heightData : AbcHeightData
  heightCoversTriple : heightData.heightDominatesC radicalData.triple.c
  admissibleBound : heightData.height <= heightData.constant * radicalData.radical
  radicalSupportClosed : Prop
  radicalSupportWitness : radicalSupportClosed
  localObstructionsCleared : Prop
  localObstructionsWitness : localObstructionsCleared
  arithmeticGeometryBridgeRecorded : Prop
  arithmeticGeometryBridgeWitness : arithmeticGeometryBridgeRecorded
  mathlibHeightModelRecorded : Prop
  mathlibHeightModelWitness : mathlibHeightModelRecorded
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false

structure AbcClosureState where
  object : AbcAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

/-- Canonical Lane abc closure is certificate closure for an admitted triple, not an unrestricted abc theorem. -/
def AbcBoundClosed (O : AbcAdmittedObject) : Prop :=
  O.heightData.height <= O.heightData.constant * O.radicalData.radical

/-- Native arithmetic certificate fields needed before the scoped abc closure may close. -/
def AbcArithmeticGeometrySubstrateClosed (O : AbcAdmittedObject) : Prop :=
  AbcBoundClosed O ∧
  O.radicalSupportClosed ∧
  O.localObstructionsCleared ∧
  O.arithmeticGeometryBridgeRecorded ∧
  O.mathlibHeightModelRecorded ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
