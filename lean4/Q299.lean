import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
structure IsRectangle (A B C D : Point) : Prop where
  is_parallelogram : midpoint ℝ A C = midpoint ℝ B D
  angle_DAB_is_right : EuclideanGeometry.angle D A B = Real.pi / 2
noncomputable def area_triangle_of_points (p₁ p₂ p₃ : Point) : ℝ :=
  abs ((p₂ 0 - p₁ 0) * (p₃ 1 - p₁ 1) - (p₃ 0 - p₁ 0) * (p₂ 1 - p₁ 1)) / 2
theorem shaded_percentage_of_rectangle
    (A B C D E : Point)
    (w : ℝ)
    (h_w_pos : w > 0)
    (h_rect : IsRectangle A B C D)
    (h_AD_is_width : dist A D = w)
    (h_AB_is_length : dist A B = 4 * w)
    (h_E_is_midpoint_BC : E = midpoint ℝ B C) :
    area_triangle_of_points A D E / (dist A B * dist A D) = 3/4 :=
  by sorry
