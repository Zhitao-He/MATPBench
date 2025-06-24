import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry InnerProductSpace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (A G H B J : PPoint)
variable (R : ℝ)
variable (hR_positive : R > 0)
variable (hG_on_circle : dist A G = R)
variable (hH_on_circle : dist A H = R)
variable (hJ_on_circle : dist A J = R)
variable (h_angle_AHG : EuclideanGeometry.angle A H G = (78 / 180 : ℝ) * Real.pi)
variable (h_angle_GBH : EuclideanGeometry.angle G B H = Real.pi / 2)  
variable (h_angle_JHG : EuclideanGeometry.angle J H G = Real.pi / 2)  
theorem problem_target_angle_HGB :
    EuclideanGeometry.angle H G B = (51 / 180 : ℝ) * Real.pi := by
  sorry
