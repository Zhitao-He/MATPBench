theory TriangleLengths
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
context
  fixes F G H :: "real^2"
  fixes x :: real
  assumes side_FG: "norm (G - F) = 9 * x - 6"
  assumes side_GH: "norm (H - G) = 7 * x + 4"
  assumes side_FH: "norm (H - F) = 17"
  assumes fg_eq_gh: "norm (G - F) = norm (H - G)"
begin
lemma find_GH_eq_39: "norm (H - G) = 39"
proof -
  from fg_eq_gh side_FG side_GH
  have "9 * x - 6 = 7 * x + 4" by simp
  with side_GH have "norm (H - G) = 7 * 5 + 4" by simp
  thus "norm (H - G) = 39" by simp
qed