import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Sqrt

namespace ProblemFormalization

open EuclideanGeometry

abbrev E2 := EuclideanSpace ℝ (Fin 2)

variable (A B C D : E2)

-- Hypotheses
variable (h_D_on_CB : Sbtw ℝ C D B)
variable (h_dist_BC : dist B C = 29)
variable (h_dist_DC : dist D C = 6)
variable (h_AD_perp_BC : ⟪A - D, B - C⟫_ℝ = 0)
variable (h_dist_AB : dist A B = 13)

theorem area_ADB_eq_target :
    Triangle.area (⟨![A, D, B]⟩ : Triangle ℝ E2) = (29 * Real.sqrt 133) / 2 := by
  sorry

end ProblemFormalization