import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
set_option autoImplicit false
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
structure MyIsSquare (A B G H : P) (side : ℝ) : Prop where
  dist_AB : dist A B = side
  dist_BG : dist B G = side
  dist_GH : dist G H = side
  dist_HA : dist H A = side
  angle_A : EuclideanGeometry.angle H A B = Real.pi / 2
  angle_B : EuclideanGeometry.angle A B G = Real.pi / 2
  angle_G : EuclideanGeometry.angle B G H = Real.pi / 2
  angle_H : EuclideanGeometry.angle G H A = Real.pi / 2
  side_is_positive : side > 0
noncomputable def area_triangle (A B C : P) : ℝ :=
  (1/2 : ℝ) * abs ((B 0 - A 0) * (C 1 - A 1) - (C 0 - A 0) * (B 1 - A 1))
theorem coplanar_adjacent_squares_area (A B C D F G H E : P)
    (h_sq_ABGH : MyIsSquare A B G H 5)
    (h_sq_BCDF : MyIsSquare B C D F 10)
    (h_collinear_ABC : Collinear ℝ {A, B, C})
    (h_B_between_A_C : Sbtw ℝ B A C)
    (h_collinear_GBF : Collinear ℝ {G, B, F})
    (h_G_between_B_F : Sbtw ℝ G B F)
    (h_E_on_AD : E ∈ segment ℝ A D)
    (h_E_on_GB : E ∈ segment ℝ G B) :
    area_triangle A B E = 25/3 := by
  sorry
end
