theory SimilarFiguresArea
imports Complex_Main "HOL-Library.Real_Vector_Spaces"
begin
theorem area_of_similar_figure:
  fixes side_small :: real and area_small :: real
  fixes side_large :: real
  assumes "side_small = 10" and "area_small = 25" and "side_large = 18"
  shows "∃area_large. area_large = area_small * (side_large / side_small)^2 ∧ area_large = 81"
proof -
  let ?ratio = "side_large / side_small"
  let ?area_large = "area_small * ?ratio^2"
  have "?ratio = 18/10" using assms by simp
  also have "... = 1.8" by simp
  finally have ratio_eq: "?ratio = 1.8" .
  have "?area_large = 25 * (1.8)^2" using assms ratio_eq by simp
  also have "... = 25 * 3.24" by simp
  also have "... = 81" by simp
  finally have "?area_large = 81" .
  thus "∃area_large. area_large = area_small * (side_large / side_small)^2 ∧ area_large = 81"
    by (rule exI, auto)
qed