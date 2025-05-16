theory BuildingHeight
  imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹
  Problem: As shown in the figure, the elevation angle of the top of a building is 30.0° when 
  viewed from point A in the air by a hot air balloon, and the depression angle of this building 
  is 60.0°. The horizontal distance between the hot air balloon and the building is 120.0m.
  We need to find the height of this building (which should be 160√3m).
›
lemma building_height_problem:
  fixes d :: real
  assumes "d = 120"
  shows "∃h y_A::real.
         let deg30 = pi / 6;
             deg60 = pi / 3
         in tan deg60 = (y_A - (-h)) / d ∧ 
            tan deg30 = (h - y_A) / d ∧
            h = 160 * sqrt 3"
proof -
  let ?deg30 = "pi / 6"
  let ?deg60 = "pi / 3"
  let ?h = "160 * sqrt 3"
  let ?y_A = "160 * sqrt 3"
  have "tan ?deg60 = sqrt 3" by (simp add: tan_pi_div_3)
  have "tan ?deg30 = 1 / sqrt 3" by (simp add: tan_pi_div_6)
  have eq1: "tan ?deg60 = (?y_A - (-?h)) / d" 
    using assms by (simp add: algebra_simps)
  have eq2: "tan ?deg30 = (?h - ?y_A) / d" 
    using assms by (simp add: algebra_simps)
  show ?thesis
    using eq1 eq2
    by (intro exI[where x="?h"] exI[where x="?y_A"]) auto
qed