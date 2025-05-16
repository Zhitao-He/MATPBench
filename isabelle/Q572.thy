theory Triangle_QRP
  imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma triangle_QRP_angle_60:
  let Q = (0::real, 0::real);
      R = (25::real, 0::real);
      P = (0::real, 25 * sqrt 3::real)
  in angle Q R P = pi / 3
proof -
  let ?Q = "(0::real, 0::real)"
  let ?R = "(25::real, 0::real)"
  let ?P = "(0::real, 25 * sqrt 3::real)"
  have "dist ?P ?Q = 25 * sqrt 3"
    by (simp add: dist_real_def)
  have "dist ?R ?Q = 25"
    by (simp add: dist_real_def)
  have "(?P - ?Q) ⦼ (?R - ?Q) = 0"
    by (simp add: inner_simps)
  show "angle ?Q ?R ?P = pi / 3"
    sorry
qed