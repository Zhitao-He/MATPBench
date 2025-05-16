theory AngleProblem
imports Main Real
begin
definition "angle_CHE = 9 * x - 11"
definition "angle_GDF = 8 * x + 4"
definition "BD_parallel_EH = True"
definition "angle_HDB = angle_GDF"
definition "angle_CHE = angle_HDB"
lemma x_value:
  assumes "angle_CHE = 9 * x - 11"
  and "angle_GDF = 8 * x + 4"
  and "angle_HDB = angle_GDF"
  and "angle_CHE = angle_HDB"
  shows "x = 15"
proof -
  have "9 * x - 11 = 8 * x + 4" 
    using assms by auto
  hence "9 * x - 8 * x = 4 + 11" by algebra
  hence "x = 15" by algebra
  thus "x = 15" by simp
qed