theory Area_Ratio_ACE_ABDE
imports Complex_Main
begin
definition area_triangle :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "area_triangle A B C = 
    abs ((fst A * (snd B - snd C) + fst B * (snd C - snd A) + fst C * (snd A - snd B)) / 2)"
definition area_rectangle :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "area_rectangle A B C D = abs (fst B - fst A) * abs (snd C - snd A)"
definition A :: "real × real" where "A = (1, 1)"
definition C :: "real × real" where "C = (3, 3)"
definition E :: "real × real" where "E = (4, 1)"
definition B :: "real × real" where "B = (1, 3)"
definition D :: "real × real" where "D = (4, 3)"
lemma C_on_BD: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ C = (1 - t) *⇩R B + t *⇩R D"
  unfolding B_def C_def D_def
  apply (rule_tac x="1/2" in exI)
  by (auto simp: algebra_simps)
theorem area_ratio_ACE_ABDE: "area_triangle A C E / area_rectangle A B D E = 1/2"
  unfolding area_triangle_def area_rectangle_def A_def B_def C_def D_def E_def
  by (simp add: algebra_simps)