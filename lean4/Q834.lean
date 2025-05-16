import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

notation "ℝ²" => EuclideanSpace ℝ (Fin 2)

section ProblemDefinition

variable (a b c d e : ℝ²)

-- Hypotheses
hypothesis h_collinear_aeb : Collinear ℝ a e b
hypothesis h_angle_eba : oangle e b a = Real.pi / 2
hypothesis h_b_on_ray_ea : ∃ k : ℝ, k ≥ 0 ∧ (b -ᵥ e) = k • (a -ᵥ e)
hypothesis h_d_on_ray_ea : ∃ k : ℝ, k ≥ 0 ∧ (d -ᵥ e) = k • (a -ᵥ e)
hypothesis h_dist_be : dist b e = 5
hypothesis h_angle_deb : angle d e b = Real.pi / 4
hypothesis h_dist_cb : dist c b = 23

-- Perimeter definition
noncomputable def perimeterCadb (c a d b : ℝ²) : ℝ :=
  dist c a + dist a d + dist d b + dist b c

theorem perimeter_quadrilateral_cadb_eq_target_value :
    perimeterCadb c a d b = 10 * Real.sqrt 2 + 46 := by
  sorry

end ProblemDefinition