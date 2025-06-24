import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
namespace ProblemGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
open Real EuclideanGeometry Affine AffineSubspace 
theorem value_of_y_is_20
    (F Y D E H B : PPoint) 
    (y : ℝ)
    (hF_ne_Y : F ≠ Y) (hD_ne_Y : D ≠ Y)
    (hE_ne_H : E ≠ H) (hY_ne_H : Y ≠ H) (hB_ne_Y : B ≠ Y)
    (h_angle_FYD : EuclideanGeometry.angle F Y D = (4 * y + 10) * (Real.pi / 180)) 
    (h_EH_parallel_BY : line[ℝ, E, H] ∥ line[ℝ, B, Y]) 
    (h_angle_EHY_right : EuclideanGeometry.angle E H Y = Real.pi / 2) 
    (h_angle_FYD_eq_BYH : EuclideanGeometry.angle F Y D = EuclideanGeometry.angle B Y H) : 
    y = 20 := by
  sorry
end ProblemGeometry
