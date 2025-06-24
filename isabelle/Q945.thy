theory Geometry_Problem
  imports Main "HOL-Analysis.Cartesian_Euclidean_Space"
begin
type_synonym point = "real^2"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle P C r ≡ dist P C = r"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint M A B ≡ M = (A + B)/⇩<sub>R</sub>2"
definition orthogonal_vectors :: "point ⇒ point ⇒ bool" (infix "⊥ᵥ" 50) where
  "u ⊥ᵥ v ≡ inner u v = 0"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter V1 V2 V3 = (SOME O'. dist O' V1 = dist O' V2 ∧ dist O' V2 = dist O' V3)"
context problem_geometry
  fixes O_pt A B P C D E F K :: point
  fixes r :: real
  assumes r_pos: "r > 0" 
  assumes A_ne_B: "A ~= B" 
  assumes O_pt_mid_AB: "is_midpoint O_pt A B" 
  assumes A_on_circle_O: "on_circle A O_pt r" 
  assumes P_on_extension_AB: "collinear {A, B, P} ∧ (∃ k_P :: real. k_P > 1 ∧ P - A = k_P %% (B - A))"
  assumes C_on_circle_O: "on_circle C O_pt r" 
  assumes C_ne_P: "C ~= P" 
  assumes PC_tangent_O: "(P - C) ⊥ᵥ (C - O_pt)" 
  assumes C_not_on_line_AB: "¬ collinear {A, B, C}"
  assumes D_reflection_C_AB_mid_on_line: "collinear {A, B, (C+D)/⇩<sub>R</sub>2}"
  assumes D_reflection_C_AB_perp: "(C - D) ⊥ᵥ (A - B)"
  assumes A_ne_D: "A ~= D"
  assumes E_on_line_AD: "collinear {A, D, E}" 
  assumes CE_perp_AD: "(C - E) ⊥ᵥ (A - D)" 
  assumes F_midpoint_CE: "is_midpoint F C E"
  assumes A_ne_F: "A ~= F" 
  assumes K_on_circle_O: "on_circle K O_pt r" 
  assumes AFK_collinear: "collinear {A, F, K}" 
  assumes K_ne_A: "K ~= A" 
  assumes P_ne_K: "P ~= K" 
  assumes C_ne_K: "C ~= K" 
  assumes P_C_K_not_collinear: "¬ collinear {P, C, K}"
begin
theorem AP_tangent_to_circumcircle_PCK:
  "(A - P) ⊥ᵥ (P - circumcenter P C K)"
end 
end