import Mathlib.Data.Real.Basic
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Data.Finset.Basic
namespace CubeProblem
def surfaceArea (s : ℝ) : ℝ := 6 * s ^ 2
def volume (s : ℝ) : ℝ := s ^ 3
def fiveTimesEdgeLength (s : ℝ) : ℝ := 5 * s
def hasProperty (s : ℝ) : Prop :=
  s > 0 ∧ surfaceArea s = volume s + fiveTimesEdgeLength s
def possibleValuesOfS : Set ℝ := {s | hasProperty s}
theorem possibleValuesOfS_is_finite : possibleValuesOfS.Finite := by sorry
open scoped BigOperators
noncomputable def sumOfPossibleValuesOfS : ℝ :=
  Finset.sum (Set.Finite.toFinset possibleValuesOfS_is_finite) id
end CubeProblem
