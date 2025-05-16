theory Triangle_RST
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem triangle_RST:
  fixes R S T :: real
  assumes "sin R = 2/5"
  shows "sin T = sqrt(21)/5"
proof -
  from assms have "sin T = sqrt(21)/5"
    sorry
  thus ?thesis .
qed