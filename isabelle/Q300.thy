theory IsoscelesTrapezoidInSemicircle
  imports Main 
begin
type_synonym point = "real × real"
definition R :: real where
  "R = 1.0" 
definition O :: point where
  "O = (0, 0)" 
definition on_semicircle :: "point ⇒ bool" where
  "on_semicircle P ≡ let (x,y) = P in x*x + y*y = R*R ∧ y ≥ 0"
axiomatization theta_param :: real where
  theta_positive: "theta_param > 0" and
  theta_upper_bound: "theta_param < pi / 2"
definition h_coord :: real where 
  "h_coord = R * sin theta_param"
definition x_coord_abs :: real where 
  "x_coord_abs = R * cos theta_param"
definition D_vertex :: point where "D_vertex = (-R, 0)"
definition C_vertex :: point where "C_vertex = (R, 0)"
definition A_vertex :: point where "A_vertex = (-x_coord_abs, h_coord)"
definition B_vertex :: point where "B_vertex = (x_coord_abs, h_coord)"
lemma D_on_semicircle: "on_semicircle D_vertex"
  unfolding D_vertex_def R_def on_semicircle_def Let_def by simp
lemma C_on_semicircle: "on_semicircle C_vertex"
  unfolding C_vertex_def R_def on_semicircle_def Let_def by simp
lemma A_on_semicircle: "on_semicircle A_vertex"
  unfolding A_vertex_def x_coord_abs_def h_coord_def R_def on_semicircle_def Let_def
  apply (simp add: sin_sq_plus_cos_sq real_power_mult_distrib power2_abs)
  apply (rule order_ge_of_gt) 
  apply (rule mult_pos_pos) 
  unfolding R_def apply simp 
  apply (rule sin_pos_iff_angle_in_0_pi)
  using theta_positive theta_upper_bound apply simp 
done
lemma B_on_semicircle: "on_semicircle B_vertex"
  unfolding B_vertex_def x_coord_abs_def h_coord_def R_def on_semicircle_def Let_def
  apply (simp add: sin_sq_plus_cos_sq real_power_mult_distrib power2_abs)
  apply (rule order_ge_of_gt)
  apply (rule mult_pos_pos)
  unfolding R_def apply simp
  apply (rule sin_pos_iff_angle_in_0_pi)
  using theta_positive theta_upper_bound apply simp
done
definition area_trapezoid :: real where
  "area_trapezoid = (2*R + 2*x_coord_abs) / 2 * h_coord"
lemma area_trapezoid_simplified: "area_trapezoid = (R + x_coord_abs) * h_coord"
  unfolding area_trapezoid_def by (simp add: field_simps)
lemma area_trapezoid_in_terms_of_theta:
  "area_trapezoid = (R + R * cos theta_param) * (R * sin theta_param)"
  unfolding area_trapezoid_simplified x_coord_abs_def h_coord_def by simp
definition area_S1 :: real where
  "area_S1 = R^2 * (pi/2 - theta_param) - R^2 * (cos theta_param) * (sin theta_param)"
definition area_S2 :: real where
  "area_S2 = (R^2 / 2) * (theta_param - sin theta_param)"
definition area_S3 :: real where
  "area_S3 = area_S2"
definition problem_condition :: bool where
  "problem_condition = (area_S1 = area_S2)" 
lemma condition_equation_simplified_for_R_eq_1:
  "problem_condition ⟷
   (pi/2 - theta_param) - (cos theta_param) * (sin theta_param) =
   (1/2) * (theta_param - sin theta_param)"
  unfolding problem_condition_def area_S1_def area_S2_def R_def by simp
lemma final_equation_for_theta:
  "problem_condition ⟷ 3 * theta_param + sin(2*theta_param) - sin(theta_param) - pi = 0"
proof -
  calc "problem_condition"
    ⟷ "(pi/2 - theta_param) - (cos theta_param) * (sin theta_param) = (1/2) * (theta_param - sin theta_param)"
        by (rule condition_equation_simplified_for_R_eq_1)
    ⟷ "2*((pi/2 - theta_param) - (cos theta_param) * (sin theta_param)) = 2*((1/2) * (theta_param - sin theta_param))"
        by (simp add: mult_eq_iff) 
    ⟷ "pi - 2*theta_param - 2*(cos theta_param)*(sin theta_param) = theta_param - sin theta_param"
        by (simp add: algebra_simps distrib_left)
    ⟷ "pi - 2*theta_param - sin(2*theta_param) = theta_param - sin theta_param"
        by (simp only: sin_2_theta)
    ⟷ "pi - sin(2*theta_param) + sin(theta_param) = 3*theta_param"
        by (simp add: algebra_simps)
    ⟷ "0 = 3*theta_param + sin(2*theta_param) - sin(theta_param) - pi"
        by (simp add: algebra_simps)
    ⟷ "3 * theta_param + sin(2*theta_param) - sin(theta_param) - pi = 0"
        by (simp only: eq_comm)
  finally show ?thesis .
qed
end