import AbcConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : AbcAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbcBoundClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
