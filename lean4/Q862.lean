import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic


abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

variable (A B C D E : EuclideanPlane)


theorem value_x_36_5
    (h_dist_AB : dist A B = 15)
    (h_dist_AD : dist A D = 9)
    (h_dist_BD : dist B D = 12)
    (h_E_on_line_AB : ∃ k : ℝ, E = AffineMap.lineMap A B k)
    (h_DE_perp_AB : ⟪D -ᵥ E, B -ᵥ A⟫ = 0)
    (h_EDB_is_right_angle : ⟪E -ᵥ D, B -ᵥ D⟫ = 0)
    : dist D C = 36 / 5 := by
  sorry