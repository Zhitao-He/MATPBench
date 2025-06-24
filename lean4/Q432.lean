import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
theorem problem_statement
  (A B C M N P_pt : P) 
  (h_right_angle_at_C : ∠ A C B = Real.pi / 2)
  (hM_midpoint_BC : M = midpoint ℝ B C)
  (hN_midpoint_AC : N = midpoint ℝ A C)
  (hP_midpoint_AB : P_pt = midpoint ℝ A B)
  (h_area_APN : triangleArea A P_pt N = 2)
  : triangleArea A B C = 8 := by
  sorry
