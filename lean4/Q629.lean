import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem measure_of_angle_ZYX_in_degrees_eq_72
  (W X Y Z : PPoint)
  (x_deg : ℝ)
  (h_angle_WZY : EuclideanGeometry.angle W Z Y = (4 * x_deg) * Real.pi / 180)
  (h_angle_XWZ : EuclideanGeometry.angle Z W X = (3 * x_deg) * Real.pi / 180)
  (h_angle_YXW : EuclideanGeometry.angle Y X W = (x_deg) * Real.pi / 180)
  (h_angle_ZYX : EuclideanGeometry.angle X Y Z = (2 * x_deg) * Real.pi / 180)
  (h_sum_of_angles :
    (4 * x_deg + 3 * x_deg + x_deg + 2 * x_deg) * Real.pi / 180 = 2 * Real.pi)
  (h_x_deg_positive : x_deg > 0) :
  2 * x_deg = 72 := by
  sorry
