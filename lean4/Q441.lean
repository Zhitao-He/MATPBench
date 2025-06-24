import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanSpace Real Finset BigOperators
open scoped Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
namespace AdamsCircleProblem
def O : PPoint := ![0, 0]
def R : ℝ := 1
def B : PPoint := ![0, -R] 
noncomputable def p (k : ℕ) : PPoint :=
  ![R * cos (k * π / 7), R * sin (k * π / 7)]
noncomputable def lengthOP (k : ℕ) : ℝ := dist O (p k)
noncomputable def productLengthsSet1 : ℝ := ∏ k ∈ Icc 1 6, lengthOP k
noncomputable def A (k : ℕ) : PPoint := ![(p k) 0, 0]
noncomputable def lengthAltitude (k : ℕ) : ℝ := dist (p k) (A k)
noncomputable def productLengthsSet2 : ℝ := ∏ k ∈ Icc 1 6, lengthAltitude k
noncomputable def xCoordA (k : ℕ) : ℝ := (A k) 0
noncomputable def denomC (k : ℕ) : ℝ := (xCoordA k)^2 + R^2
lemma denomC_ne_zero (k : ℕ) : denomC k ≠ 0 := by
  rw [denomC]
  have h : 0 ≤ (xCoordA k)^2 := sq_nonneg _
  have h' : 0 < R^2 := by
    rw [R]
    norm_num
  linarith [h, h']
noncomputable def C (k : ℕ) : PPoint :=
  let xk := xCoordA k
  ![ (2 * R^2 * xk) / (denomC k), (R * (R^2 - xk^2)) / (denomC k) ]
noncomputable def lengthAC (k : ℕ) : ℝ := dist (A k) (C k)
noncomputable def productLengthsSet3 : ℝ := ∏ k ∈ Icc 1 6, lengthAC k
noncomputable def totalProduct : ℝ := productLengthsSet1 * productLengthsSet2 * productLengthsSet3
theorem adamsProblem : totalProduct = (7^3 : ℝ) / (2^12 * 13^2) := by sorry
end AdamsCircleProblem
