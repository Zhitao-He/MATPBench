theory AngleBAC
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹As shown in the diagram, AB=13, AC=12, BC=15. Find the measure of ∠BAC.›
(* Define the triangle with side lengths *)
definition AB :: "real" where "AB = 13"
definition AC :: "real" where "AC = 12"
definition BC :: "real" where "BC = 15"
(* Use the law of cosines to find the measure of angle BAC *)
(* cos(BAC) = (AB² + AC² - BC²) / (2 * AB * AC) *)
(* Substituting the values: cos(BAC) = (13² + 12² - 15²) / (2 * 13 * 12) = (169 + 144 - 225) / 312 = 88 / 312 = 11 / 39 *)
theorem angle_BAC_value:
  "let cos_BAC = (AB^2 + AC^2 - BC^2) / (2 * AB * AC)
   in (180 / pi) * arccos cos_BAC = (180 / pi) * arccos (11/39)"
proof -
  have "AB^2 + AC^2 - BC^2 = 13^2 + 12^2 - 15^2"
    by (simp add: AB_def AC_def BC_def)
  also have "... = 169 + 144 - 225"
    by simp
  also have "... = 88"
    by simp
  finally have AB2_AC2_BC2: "AB^2 + AC^2 - BC^2 = 88"
    by this
  have "2 * AB * AC = 2 * 13 * 12"
    by (simp add: AB_def AC_def)
  also have "... = 312"
    by simp
  finally have AB_AC_times: "2 * AB * AC = 312"
    by this
  have "AB^2 + AC^2 - BC^2 = 88"
    by (simp add: AB2_AC2_BC2)
  moreover have "2 * AB * AC = 312" 
    by (simp add: AB_AC_times)
  ultimately have "(AB^2 + AC^2 - BC^2) / (2 * AB * AC) = 88 / 312"
    by (simp add: divide_right)
  also have "88 / 312 = 11 / 39"
    by (simp add: divide_simps)
  finally have cos_BAC: "(AB^2 + AC^2 - BC^2) / (2 * AB * AC) = 11 / 39"
    by this
  show ?thesis
    by (simp add: cos_BAC)
qed