theory Geometry_Problem_Formalization
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition p_collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "p_collinear A B C ≡ (B₁ - A₁) * (C₂ - A₂) - (B₂ - A₂) * (C₁ - A₁) = 0"
definition p_on_segment :: "point ⇒ point ⇒ point ⇒ bool" ("_ lies_on_segment _, _") where
  "M lies_on_segment P, Q ≡ ∃t::real. 0 ≤ t ∧ t ≤ 1 ∧ M = (1-t)*P + t*Q"
definition geom_angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "geom_angle_rad P O Q = (
    let vOP = P - O; vOQ = Q - O in
    if vOP = (0::point) ∨ vOQ = (0::point) then 0
    else acos ((vOP inner vOQ) / (norm vOP * norm vOQ))
  )"
definition geom_angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "geom_angle_deg P O Q = geom_angle_rad P O Q * (180 / pi)"
definition vectors_perpendicular :: "point ⇒ point ⇒ bool" (infix "⊥ᵥ" 65) where
  "v1 ⊥ᵥ v2 ≡ v1 inner v2 = 0"
locale GeometricProblem =
  fixes A B C D E F :: point 
  assumes A_neq_B: "A ≠ B"
  and   B_neq_C: "B ≠ C"
  and   C_neq_A: "C ≠ A"
  and   D_neq_A: "D ≠ A"
  and   D_neq_C: "D ≠ C"
  and   E_neq_B: "E ≠ B"
  and   E_neq_C: "E ≠ C"
  and   F_neq_B: "F ≠ B" 
  and   F_neq_D: "F ≠ D" 
  and   A_neq_F: "A ≠ F" 
  and   D_neq_E: "D ≠ E" 
  assumes D_on_AC: "D lies_on_segment A, C"
  assumes E_on_BC: "E lies_on_segment B, C"
  assumes F_on_BD: "F lies_on_segment B, D"
  assumes ABC_not_collinear: "¬ p_collinear A B C"
  assumes angle_ABD_is_35: "geom_angle_deg A B D = 35"
  assumes BD_bisects_ABC: "geom_angle_deg D B C = geom_angle_deg A B D"
  assumes angle_BCA_is_50: "geom_angle_deg B C A = 50"
  assumes AF_perp_line_BD: "(A - F) ⊥ᵥ (D - B)"
  assumes CDE_not_collinear: "¬ p_collinear C D E"
begin
lemma angle_AFD_is_90: "geom_angle_deg A F D = 90"
proof
  from F_on_BD obtain t where t_def: "0 ≤ t ∧ t ≤ 1 ∧ F = (1-t)*B + t*D"
    by (unfold p_on_segment_def)
  have t_not_0: "t ≠ 0" using t_def F_neq_B by (auto simp add: point_eq_iff)
  have t_not_1: "t ≠ 1" using t_def F_neq_D by (auto simp add: point_eq_iff)
  have D_minus_F_eq: "D - F = (1-t)*(D-B)"
  proof
    from t_def have "D - F = D - ((1-t)*B + t*D)" by simp
    also have "... = (1-t)*D - (1-t)*B" by (simp add: algebra_simps point_left_minus smult_minus_distrib)
    also have "... = (1-t)*(D-B)" by (simp add: algebra_simps point_left_minus smult_diff_distrib)
    finally show ?thesis.
  qed
  have AF_inner_DF_val: "(A-F) inner (D-F) = (1-t) * ((A-F) inner (D-B))"
    by (simp add: D_minus_F_eq inner_smult_right) 
  also have "(A-F) inner (D-B) = 0" 
    by (simp add: AF_perp_line_BD vectors_perpendicular_def)
  also have "(1-t) * 0 = 0" by simp
  finally have dot_prod_A_F_D_F_is_0: "(A-F) inner (D-F) = 0".
  have norm_A_F_ne_0: "norm (A-F) ≠ 0" using A_neq_F by (simp add: norm_eq_zero)
  have norm_D_F_ne_0: "norm (D-F) ≠ 0"
  proof - 
    have aux_DF_eq_zero_iff: "D-F = 0 ⟷ D = F" by (simp only: sub_eq_zero_iff_eq)
    from F_neq_D have "D ≠ F" by (simp add: aux_DF_eq_zero_iff).
    then show "norm (D-F) ≠ 0" by (simp add: norm_eq_zero).
  qed
  from dot_prod_A_F_D_F_is_0 have "geom_angle_rad A F D = acos(0)"
    by (simp add: geom_angle_rad_def Let_def norm_A_F_ne_0 norm_D_F_ne_0)
  also have "acos(0) = pi / 2" by simp
  finally have "geom_angle_rad A F D = pi / 2".
  then have "geom_angle_deg A F D = (pi / 2) * (180 / pi)"
    by (simp add: geom_angle_deg_def)
  also have "... = 90"
    by (simp add: field_simps Real.pi_ne_zero) 
  finally show "geom_angle_deg A F D = 90".
qed
theorem target_problem: "geom_angle_deg C D E = 45"
  sorry 
end 
end