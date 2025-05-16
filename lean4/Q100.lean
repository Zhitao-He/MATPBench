import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Algebra.BigOperators.Finset

namespace Putnam1994A5

/-- Number of rows in the triangle, also the width of the bottom row. -/
def numRows : ℕ := 11

/-- A bottom row configuration (mapping each slot to 0 or 1). -/
abbrev BottomRowDistribution := Fin numRows → Fin 2

/--
Recursively computes the value of the entry at a given row and column,
according to the rule: each entry is the sum of the two just below it,
starting from a given bottom row.
Rows and columns are 0-based, with rows indexed from 0 (top) to numRows-1 (bottom).
-/
def triangleValue
    (dist : BottomRowDistribution)
    : (r c : ℕ) → Option ℕ
  | r, c =>
    if h1 : r < numRows ∧ c ≤ r then
      if r = numRows - 1 then
        -- bottom row, get distribution
        if h : c < numRows then
          some (dist ⟨c, h⟩).val
        else
          none
      else
        -- otherwise sum of below entries
        match triangleValue dist (r+1) c, triangleValue dist (r+1) (c+1) with
        | some a, some b => some (a + b)
        | _,     _       => none
    else
      none

/-- The value in the top square (row 0, col 0). -/
def topValue (dist : BottomRowDistribution) : ℕ :=
  (triangleValue dist 0 0).getD 0

/-- "n is a multiple of 3". -/
def multipleOfThree (n : ℕ) : Prop := n % 3 = 0

/-- The set of valid bottom row assignments making the top value a multiple of 3. -/
def validDistributions : Finset BottomRowDistribution :=
  Finset.univ.filter (fun dist => multipleOfThree (topValue dist))

/-- The number of such valid distributions. -/
def numValidDistributions : ℕ := validDistributions.card

/-- The answer is 640 (per the problem statement). -/
theorem solution : numValidDistributions = 640 := by sorry

end Putnam1994A5