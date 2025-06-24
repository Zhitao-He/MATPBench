import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem geometry_problem_BG_div_CG_eq_BD_div_CD
  (A B C D E F G O₁ O₂ : Point)
  (h_AB_eq_AC : dist A B = dist A C)
  (h_B_ne_C : B ≠ C)
  (h_ABD_not_collinear : ¬ Collinear ℝ ({A, B, D} : Set Point))
  (h_ACD_not_collinear : ¬ Collinear ℝ ({A, C, D} : Set Point))
  (h_O₁_is_circumcenter_ABD : O₁ = circumcenter A B D)
  (h_O₂_is_circumcenter_ACD : O₂ = circumcenter A C D)
  (h_F_on_line_AC : Collinear ℝ ({A, F, C} : Set Point))
  (h_F_on_circle₁ : F ∈ EuclideanGeometry.Sphere.mk O₁ (dist A O₁))
  (h_F_ne_A : F ≠ A)
  (h_E_on_line_AB : Collinear ℝ ({A, E, B} : Set Point))
  (h_E_on_circle₂ : E ∈ EuclideanGeometry.Sphere.mk O₂ (dist A O₂))
  (h_E_ne_A : E ≠ A)
  (h_G_on_line_BF : Collinear ℝ ({B, G, F} : Set Point))
  (h_G_on_line_CE : Collinear ℝ ({C, G, E} : Set Point))
  (h_CG_ne_zero : C ≠ G)
  (h_CD_ne_zero : C ≠ D)
  : dist B G / dist C G = dist B D / dist C D := by
  sorry
