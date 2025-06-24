import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def circumradius (A B C : Point) : ℝ := sorry
def target_theorem
  (A B C I_pt D_pt E_pt F_pt P_center J_pt G_pt H_pt K_pt : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (r_I : ℝ) (h_r_I_pos : r_I > 0)
  (h_D_pt_on_BC : D_pt ∈ line[ℝ, B, C])
  (h_E_pt_on_CA : E_pt ∈ line[ℝ, C, A])
  (h_F_pt_on_AB : F_pt ∈ line[ℝ, A, B])
  (r_P : ℝ) (hr_P_pos : r_P > 0)
  (h_J_pt_on_circumcircle : dist J_pt (circumcenter A B C) = circumradius A B C)
  (h_J_pt_on_circle_P : dist J_pt P_center = r_P)
  (h_O_P_tangent_ext : dist (circumcenter A B C) P_center = circumradius A B C + r_P)
  (h_G_pt_on_line_AB : G_pt ∈ line[ℝ, A, B])
  (h_G_pt_on_circle_P : dist G_pt P_center = r_P)
  (h_P_center_G_pt_perp_AB : inner ℝ (P_center -ᵥ G_pt) (B -ᵥ A) = 0)
  (h_H_pt_on_line_AC : H_pt ∈ line[ℝ, A, C])
  (h_H_pt_on_circle_P : dist H_pt P_center = r_P)
  (h_P_center_H_pt_perp_AC : inner ℝ (P_center -ᵥ H_pt) (C -ᵥ A) = 0)
  (h_K_pt_collinear_A_D : Collinear ℝ ({A, D_pt, K_pt} : Set Point))
  (h_K_pt_on_circle_P : dist K_pt P_center = r_P)
  (h_D_pt_between_A_K_pt : Wbtw ℝ A D_pt K_pt)
  (h_K_pt_ne_A : K_pt ≠ A)
  : Prop := dist A J_pt = dist A K_pt
theorem prove_AJ_eq_AK
  (A B C I_pt D_pt E_pt F_pt P_center J_pt G_pt H_pt K_pt : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (r_I : ℝ) (h_r_I_pos : r_I > 0)
  (h_D_pt_on_BC : D_pt ∈ line[ℝ, B, C])
  (h_E_pt_on_CA : E_pt ∈ line[ℝ, C, A])
  (h_F_pt_on_AB : F_pt ∈ line[ℝ, A, B])
  (r_P : ℝ) (hr_P_pos : r_P > 0)
  (h_J_pt_on_circumcircle : dist J_pt (circumcenter A B C) = circumradius A B C)
  (h_J_pt_on_circle_P : dist J_pt P_center = r_P)
  (h_O_P_tangent_ext : dist (circumcenter A B C) P_center = circumradius A B C + r_P)
  (h_G_pt_on_line_AB : G_pt ∈ line[ℝ, A, B])
  (h_G_pt_on_circle_P : dist G_pt P_center = r_P)
  (h_P_center_G_pt_perp_AB : inner ℝ (P_center -ᵥ G_pt) (B -ᵥ A) = 0)
  (h_H_pt_on_line_AC : H_pt ∈ line[ℝ, A, C])
  (h_H_pt_on_circle_P : dist H_pt P_center = r_P)
  (h_P_center_H_pt_perp_AC : inner ℝ (P_center -ᵥ H_pt) (C -ᵥ A) = 0)
  (h_K_pt_collinear_A_D : Collinear ℝ ({A, D_pt, K_pt} : Set Point))
  (h_K_pt_on_circle_P : dist K_pt P_center = r_P)
  (h_D_pt_between_A_K_pt : Wbtw ℝ A D_pt K_pt)
  (h_K_pt_ne_A : K_pt ≠ A)
  : target_theorem A B C I_pt D_pt E_pt F_pt P_center J_pt G_pt H_pt K_pt
      h_noncollinear r_I h_r_I_pos h_D_pt_on_BC h_E_pt_on_CA h_F_pt_on_AB
      r_P hr_P_pos h_J_pt_on_circumcircle h_J_pt_on_circle_P h_O_P_tangent_ext
      h_G_pt_on_line_AB h_G_pt_on_circle_P h_P_center_G_pt_perp_AB
      h_H_pt_on_line_AC h_H_pt_on_circle_P h_P_center_H_pt_perp_AC
      h_K_pt_collinear_A_D h_K_pt_on_circle_P h_D_pt_between_A_K_pt h_K_pt_ne_A := by
  sorry
