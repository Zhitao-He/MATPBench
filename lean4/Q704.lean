import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.Convex.Between
import Mathlib.Data.Real.Pi.Notation

open scoped Real Angle

noncomputable section

-- Assume we work in the Euclidean plane, in an abstract 2d affine Euclidean space E over ℝ
variable {E : Type*} [NormedAddTorsor ℝ E] [EuclideanSpace ℝ E]

-- Points in the plane
variable (A G H B J : E)

-- Radius of the circle
variable (r : ℝ)
variable (hr_pos : 0 < r)

-- Points G, H, J are on the circle centered at A with radius r
variable (hG_on_circle : dist G A = r)
variable (hH_on_circle : dist H A = r)
variable (hJ_on_circle : dist J A = r)

-- Points are distinct as needed
variable (h_G_ne_A : G ≠ A) (h_H_ne_A : H ≠ A)
variable (h_J_ne_H : J ≠ H) (h_G_ne_H : G ≠ H) (h_G_ne_B : G ≠ B) (h_H_ne_B : H ≠ B)

-- Given: ∠ H A G = 78°
variable (h_angle_HAG : (∠ H A G).value = (78 / 180 : ℝ) * Real.pi)

-- Given: GB ⟂ HB, i.e., ∠ G B H = 90°
variable (h_gb_perp_hb : (∠ G B H).value = Real.pi / 2)

-- Given: JH ⟂ GH, i.e., ∠ J H G = 90°
variable (h_jh_perp_gh : (∠ J H G).value = Real.pi / 2)

-- Collinearity and betweenness: B is strictly between G and J
variable (h_B_sbtw_GJ : Sbtw ℝ G B J)

-- The theorem to be proven
theorem value_of_angle_HGB : (∠ H G B).value = (51 / 180 : ℝ) * Real.pi := by
  sorry

end