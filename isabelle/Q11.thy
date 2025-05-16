theory ConicalPaperCap
imports Complex_Main
begin
theorem conical_paper_cap_perimeter:
  "let r = 6::real;
       θ = (120::real) * pi / 180;
       arc_length = r * θ
   in arc_length = 4 * pi"
proof -
  let ?r = "6::real"
  let ?θ = "(120::real) * pi / 180"
  let ?arc_length = "?r * ?θ"
  have "?θ = (2 * pi) / 3"
    by (simp add: algebra_simps)
  hence "?arc_length = 6 * ((2 * pi) / 3)"
    by simp
  also have "... = 4 * pi"
    by (simp add: algebra_simps)
  finally show ?thesis
    by (simp add: Let_def)
qed