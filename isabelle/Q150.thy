theory Geometry_Problem_Setup
  imports "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real^2"
definition point_on_segment :: "point ⇒ point ⇒ point ⇒ bool" (infix "lies_on_segment" 55) where
  "P2 lies_on_segment P1 P3 ≡ dist P1 P2 + dist P2 P3 = dist P1 P3"
locale geometric_context =
  fixes A B C D E F G H J K :: point 
  and r :: real 
  assumes
    radius_positive: "r > 0"
    and A_on_circle: "dist A D = r"
    and B_on_circle: "dist B D = r"
    and C_on_circle: "dist C D = r"
    and F_on_circle: "dist F D = r"
    and J_on_circle: "dist J D = r"
    and angle_ABC_is_90: "(A - B) inner (C - B) = 0"
    and B_neq_A: "B ≠ A"
    and B_neq_C: "B ≠ C"
    and K_on_segment_AC: "K lies_on_segment A C"
    and K_on_segment_BJ: "K lies_on_segment B J"
    and A_neq_C: "A ≠ C"
    and B_neq_J: "B ≠ J"
    and K_neq_A: "K ≠ A"
    and K_neq_C: "K ≠ C"
    and K_neq_B: "K ≠ B"
    and K_neq_J: "K ≠ J"
    and F_on_segment_DE: "F lies_on_segment D E"
    and E_neq_F: "E ≠ F"
    and angle_FDC_is_90: "(F - D) inner (C - D) = 0" 
    and G_definition: "G = F + (C - D)" 
    and H_on_segment_CG: "H lies_on_segment C G"
    and DH_perp_line_CG: "(D - H) inner (G - C) = 0" 
    and H_neq_C: "H ≠ C"
    and H_neq_G: "H ≠ G"
    and distinct_points_on_circle: "distinct [A,B,C,F,J]"
begin
lemma D_not_eq_A_lemma: "D ≠ A"
  using radius_positive A_on_circle by (simp add: dist_eq_0_iff)
lemma C_not_eq_G_lemma: "C ≠ G"
proof -
  assume C_eq_G: "C = G"
  from C_eq_G G_definition have "C = F + (C - D)" by simp
  then have "D = F" by (simp add: add_left_cancel sub_eq_iff_eq_add vec_eq_iff) 
  with radius_positive F_on_circle show "False" by (simp add: dist_eq_0_iff D_not_eq_A_lemma [OF radius_positive F_on_circle]) 
qed
end