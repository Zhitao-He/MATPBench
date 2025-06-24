import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def to_radians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem sum_of_angles_is_90
    (A B C D : P)
    (x y : ℝ)
    (h_not_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_sbtw_BDC : Sbtw ℝ B D C)
    (h_AD_eq_BD : dist A D = dist B D)
    (h_BD_eq_DC : dist B D = dist D C)
    (h_angle_ADB : ∠ A D B = to_radians 104)
    (h_angle_ABD : ∠ A B D = to_radians x)
    (h_angle_ACD : ∠ A C D = to_radians y)
    (hx_pos : 0 < x) (hx_lt_180 : x < 180)
    (hy_pos : 0 < y) (hy_lt_180 : y < 180)
    : x + y = 90 := by
  sorry
