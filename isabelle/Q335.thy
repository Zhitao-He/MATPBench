theory CubeProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem cube_surface_area_volume_edge_sum:
  "(\<Sum>s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}. s) = 6"
proof -
  have "{s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s} = {1, 5}"
  proof
    show "{s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s} \<subseteq> {1, 5}"
    proof
      fix s :: real
      assume "s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}"
      hence "s > 0" and "6 * s^2 = s^3 + 5 * s" by auto
      hence "s^3 - 6 * s^2 + 5 * s = 0" by simp
      hence "s * (s^2 - 6 * s + 5) = 0" by simp
      hence "s * (s - 1) * (s - 5) = 0" by algebra
      with \<open>s > 0\<close> have "s = 1 \<or> s = 5" by auto
      thus "s \<in> {1, 5}" by simp
    qed
    show "{1, 5} \<subseteq> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}"
    proof
      fix s :: real
      assume "s \<in> {1, 5}"
      hence "s = 1 \<or> s = 5" by simp
      moreover
      { assume "s = 1"
        hence "s > 0" by simp
        moreover
        have "6 * 1^2 = 1^3 + 5 * 1" by simp
        hence "6 * s^2 = s^3 + 5 * s" using \<open>s = 1\<close> by simp
        ultimately have "s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}" by simp }
      moreover
      { assume "s = 5"
        hence "s > 0" by simp
        moreover
        have "6 * 5^2 = 5^3 + 5 * 5" by simp
        hence "6 * s^2 = s^3 + 5 * s" using \<open>s = 5\<close> by simp
        ultimately have "s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}" by simp }
      ultimately show "s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}" by blast
    qed
  qed
  hence "(\<Sum>s \<in> {s::real. s > 0 \<and> 6 * s^2 = s^3 + 5 * s}. s) = (\<Sum>s \<in> {1, 5}. s)" by simp
  also have "... = 1 + 5" by simp
  also have "... = 6" by simp
  finally show ?thesis .
qed