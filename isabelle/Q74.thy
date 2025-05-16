theory CylindricalSheets
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem cylindrical_sheets_volume:
  "∃r h::real. 
     r > 0 ∧ h > 0 ∧
     (pi * r^2 * h = 100) ∧
     (let r' = 2 * r; h' = h in pi * r'^2 * h' = 400)"
proof -
  have "∃r h::real. r > 0 ∧ h > 0 ∧ pi * r^2 * h = 100"
    by (metis mult_pos_pos pi_pos_lt zero_less_power)
  then obtain r h where rh_props: "r > 0" "h > 0" "pi * r^2 * h = 100"
    by auto
  have "pi * (2*r)^2 * h = pi * (4*r^2) * h" 
    by (simp add: power2_eq_square algebra_simps)
  also have "... = 4 * (pi * r^2 * h)" 
    by (simp add: algebra_simps)
  also have "... = 4 * 100" 
    using rh_props(3) by simp
  also have "... = 400" 
    by simp
  finally have "pi * (2*r)^2 * h = 400" .
  thus "∃r h::real. 
          r > 0 ∧ h > 0 ∧
          (pi * r^2 * h = 100) ∧
          (let r' = 2 * r; h' = h in pi * r'^2 * h' = 400)"
    using rh_props by auto
qed