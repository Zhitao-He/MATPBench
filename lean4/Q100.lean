import Mathlib.Data.Fin.Basic
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
open scoped BigOperators
namespace TriangularArrayProblem
/
    The k-th row (1-indexed from the top) has k squares. The bottom row is row `numRowsTotal`. -/
def numRowsTotal : Nat := 11
/
    The bottom row has `numRowsTotal` squares.
    The function maps the 0-indexed column `j` (from `0` to `numRowsTotal - 1`)
    in the bottom row to a value in `Fin 2` (representing 0 or 1). -/
abbrev BottomRowConfig := Fin numRowsTotal → Fin 2
/
Computes the value in a square of the pyramid.
The pyramid structure is:
- Row 0 (top) has 1 square.
- Row `r` (0-indexed from top) has `r+1` squares.
- Row `numRowsTotal - 1` (bottom) has `numRowsTotal` squares.
Parameters:
- `bottomRowConfig`: The configuration of 0s and 1s in the bottom row.
- `r`: The row index, 0-indexed from the top (0 is the top row, `numRowsTotal - 1` is the bottom row).
- `c`: The column index within row `r`, 0-indexed (from `0` to `r`).
- `hrLtNumRowsTotal`: Proof that `r < numRowsTotal`.
- `hcLeR`: Proof that `c ≤ r`.
-/
def pyramidSquareValue (bottomRowConfig : BottomRowConfig)
  (r : Nat) (c : Nat) (hrLtNumRowsTotal : r < numRowsTotal) (hcLeR : c ≤ r) : Nat :=
  if hIsBottomRow : r = numRowsTotal - 1 then
    have hcLtNumRowsTotal : c < numRowsTotal := sorry
    (bottomRowConfig ⟨c, hcLtNumRowsTotal⟩).val
  else
    let rNext := r + 1
    have hrNextLtNumRowsTotal : rNext < numRowsTotal := sorry
    let valBelowLeft := pyramidSquareValue bottomRowConfig rNext c
      hrNextLtNumRowsTotal (Nat.le_trans hcLeR (Nat.le_succ r))
    let valBelowRight := pyramidSquareValue bottomRowConfig rNext (c+1)
      hrNextLtNumRowsTotal (Nat.succ_le_succ hcLeR)
    valBelowLeft + valBelowRight
termination_by numRowsTotal - 1 - r
def topSquareValue (config : BottomRowConfig) : Nat :=
  pyramidSquareValue config 0 0
    (by decide) 
    (by decide) 
/
This lemma states that the value in the top square can be calculated as a weighted sum
of the bottom row values, where weights are binomial coefficients `C(numRowsTotal - 1, i)`.
This is a standard result for Pascal-like triangles.
`Nat.choose n k` is `C(n,k)`.
-/
lemma topSquareValueEqBinomialSum (config : BottomRowConfig) :
  topSquareValue config =
    ∑ i in Finset.univ, (Nat.choose (numRowsTotal - 1) i.val) * (config i).val := by sorry
/
    This is `Finset.univ`, which represents the set of all functions `Fin numRowsTotal → Fin 2`.
    Requires `Fintype (Fin numRowsTotal → Fin 2)`, which is provided by `Mathlib.Data.Fintype.Pi`. -/
def allBottomRowConfigs : Finset BottomRowConfig := Finset.univ
def validConfigs : Finset BottomRowConfig :=
  Finset.filter (fun config => topSquareValue config % 3 = 0) allBottomRowConfigs
/
    The statement claims this number is 640. -/
theorem numValidConfigsIs640 :
  Finset.card validConfigs = 640 := by sorry
end TriangularArrayProblem
