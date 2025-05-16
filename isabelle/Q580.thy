theory TriangleProblem
  imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹As shown in the diagram, AB=15*x+9, AC=7*x, BC=11*x+5, Perimeter(△CBA) is 320. Find CB.›
definition triangle_perimeter :: "real × real × real ⇒ real" where
  "triangle_perimeter sides = (case sides of (a, b, c) ⇒ a + b + c)"
lemma triangle_perimeter_formula:
  fixes a b c :: real
  assumes "a > 0" "b > 0" "c > 0" 
          "a + b > c" "a + c > b" "b + c > a"
  shows "triangle_perimeter (a, b, c) = a + b + c"
  unfolding triangle_perimeter_def by simp
lemma triangle_CB_length:
  assumes "triangle_perimeter ((15*x+9), (7*x), (11*x+5)) = 320"
          "x > 0"  
  shows "11*x + 5 = 107"
proof -
  from assms(1) have "15*x + 9 + 7*x + (11*x + 5) = 320"
    unfolding triangle_perimeter_def by simp
  hence "33*x + 14 = 320" by algebra
  hence "33*x = 306" by algebra
  hence "x = 306/33" by (simp add: field_simps)
  hence "x = 102/11" by (simp add: field_simps)
  have "11*x + 5 = 11*(102/11) + 5" using ‹x = 102/11› by simp
  also have "... = 102 + 5" by simp
  also have "... = 107" by simp
  finally show "11*x + 5 = 107" .
qed
lemma triangle_inequality_check:
  assumes "x = 102/11"
  shows "7*x > 0" "15*x + 9 > 0" 
        "7*x + 11*x + 5 > 15*x + 9"
        "7*x + 15*x + 9 > 11*x + 5"
        "11*x + 5 + 15*x + 9 > 7*x"
proof -
  have "x > 0" using assms by simp
  show "7*x > 0" using ‹x > 0› by simp
  show "15*x + 9 > 0" using ‹x > 0› by simp
  have "7*x + 11*x + 5 = 18*x + 5" by simp
  also have "... > 15*x + 9" when "x > 3/2" 
    using that by (simp add: algebra_simps)
  finally show "7*x + 11*x + 5 > 15*x + 9" 
    using assms by (simp add: field_simps)
  have "7*x + 15*x + 9 = 22*x + 9" by simp
  also have "... > 11*x + 5" when "x > 2/11"
    using that by (simp add: algebra_simps)
  finally show "7*x + 15*x + 9 > 11*x + 5"
    using assms by (simp add: field_simps)
  have "11*x + 5 + 15*x + 9 = 26*x + 14" by simp
  also have "... > 7*x" when "x < 14/19"
    using that by (simp add: algebra_simps)
  finally show "11*x + 5 + 15*x + 9 > 7*x"
    using assms by (simp add: field_simps)
qed
theorem CB_length: "CB = 107"
  using triangle_CB_length triangle_inequality_check
  by (metis (no_types, hide_lams) divide_eq_0_iff mult_eq_0_iff nonzero_divide_eq_eq 
      numeral_eq_iff numeral_times_numeral real_divide_numeral semiring_normalization_rules(27))