theory QuadrilateralProblem
imports Complex_Main
begin
fix x :: real
definition AB :: real where "AB = x + 1"
definition CD :: real where "CD = x - 1"
definition FE :: real where "FE = 8"
definition HG :: real where "HG = 5"
lemma similar_quad_proportion:
  assumes "AB/FE = CD/HG"
  shows "CD = (HG * AB) / FE"
  using assms by (simp add: field_simps)
theorem CD_value:
  shows "CD = 10/3"
proof -
  have "AB/FE = CD/HG" 
    by (simp add: AB_def CD_def FE_def HG_def, auto simp: field_simps)
  have "CD = (HG * AB) / FE"
    using similar_quad_proportion by simp
  thus "CD = 10/3"
    by (simp add: AB_def FE_def HG_def)
qed