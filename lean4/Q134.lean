import Mathlib.Data.Real.Basic 
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Basic
namespace OctagonProblem
inductive OctagonPoint : Type where
  | A | B | C | D | E | F | G | H | J
  deriving Repr, DecidableEq, Inhabited 
def allOctagonPoints : List OctagonPoint :=
  [OctagonPoint.A, OctagonPoint.B, OctagonPoint.C, OctagonPoint.D,
   OctagonPoint.E, OctagonPoint.F, OctagonPoint.G, OctagonPoint.H,
   OctagonPoint.J]
def digits : List Nat := [1, 2, 3, 4, 5, 6, 7, 8, 9]
def isPermutation (assignMap : OctagonPoint → Nat) : Prop :=
  let assignedValues := allOctagonPoints.map assignMap
  assignedValues.Nodup ∧
  (∀ (val : Nat), val ∈ assignedValues ↔ val ∈ digits)
def satisfiesSumCondition (assignMap : OctagonPoint → Nat) : Prop :=
  let valA := assignMap OctagonPoint.A
  let valB := assignMap OctagonPoint.B
  let valC := assignMap OctagonPoint.C
  let valD := assignMap OctagonPoint.D
  let valE := assignMap OctagonPoint.E
  let valF := assignMap OctagonPoint.F
  let valG := assignMap OctagonPoint.G
  let valH := assignMap OctagonPoint.H
  let valJ := assignMap OctagonPoint.J
  let sumAJE := valA + valJ + valE
  let sumBJF := valB + valJ + valF
  let sumCJG := valC + valJ + valG
  let sumDJH := valD + valJ + valH
  sumAJE = sumBJF ∧ sumBJF = sumCJG ∧ sumCJG = sumDJH
noncomputable def setOfValidMaps : Finset (OctagonPoint → Nat) := sorry
theorem numberOfWays_is_1152 :
  setOfValidMaps.card = 1152 := by sorry
end OctagonProblem
