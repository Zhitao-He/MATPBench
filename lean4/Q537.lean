import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev P := EuclideanSpace ℝ (Fin 2)
open scoped EuclideanGeometry
open scoped Real
open Real
noncomputable def deg_to_rad (deg : ℝ) : ℝ := deg * (π / 180)
theorem problem_statement
  (A J H G B : P)
  (x_val : ℝ)
  (h_AJH_eq_x_deg : ∠ A J H = deg_to_rad x_val)
  (h_HGB_eq_2x_deg : ∠ H G B = deg_to_rad (2 * x_val))
  (h_A_is_midpoint_JG : A = midpoint ℝ J G)
  (h_dist_AH_eq_dist_AJ : dist A H = dist A J)
  (h_GBH_is_right_angle : ∠ G B H = π / 2)
  (h_JHG_is_right_angle : ∠ J H G = π / 2)
  (h_B_on_segment_JG : B ∈ segment ℝ J G)
  (h_J_ne_H : J ≠ H)
  (h_G_ne_H : G ≠ H)
  (h_J_ne_G : J ≠ G)
  (h_G_ne_B : G ≠ B)
  (h_H_ne_B : H ≠ B)
  (h_B_ne_J : B ≠ J)
  (h_x_val_sensible : x_val > 0 ∧ x_val < 90) :
  ∠ B H G = deg_to_rad 30 := by
  sorry
