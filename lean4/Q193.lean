import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.Convex.Between
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem rhombus_angle_property
  (A B C D O : P)
  (h_non_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
  (h_O_mid_AC : O = midpoint ℝ A C)
  (h_O_mid_BD : O = midpoint ℝ B D)
  (h_AB_eq_BC : dist A B = dist B C)
  (h_angle_OAD : ∠ D A O = (28 : ℝ) / 180 * Real.pi)
  : ∠ C B O = (62 : ℝ) / 180 * Real.pi := by
  sorry
