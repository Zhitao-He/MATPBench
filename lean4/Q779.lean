import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def circumference (radius : ℝ) : ℝ := 2 * Real.pi * radius
theorem circumference_of_circle_S_is_288_div_7
  (S R T : P)
  (r : ℝ)
  (hr_pos : 0 < r)
  (hSR_on_circle : dist S R = r)
  (hST_on_circle : dist S T = r)
  (h_angle_TSR : EuclideanGeometry.angle T S R = (70 / 180 : ℝ) * Real.pi)
  (h_arc_length_RT : r * (EuclideanGeometry.angle T S R) = 8)
  : circumference r = (288 : ℝ) / (7 : ℝ) := by
  sorry
