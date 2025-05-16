theory ConcentricCircles
  imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma concentric_circles_chord_tangent_area:
  fixes r R :: real
  assumes "r > 0" and "R > 0" and "r < R"
  assumes "32 = 2 * sqrt(R^2 - r^2)" (* tangency condition: chord length = 32 *)
  shows "∃k::real. (R^2 - r^2) * π = k * π ∧ k = 256"
proof -
  (* The area of the shaded region (between the circles) is (R^2 - r^2) * π *)
  (* The chord length constraint gives us: 32 = 2 * sqrt(R^2 - r^2) *)
  from assms(4) have "32/2 = sqrt(R^2 - r^2)" by simp
  hence "16 = sqrt(R^2 - r^2)" by simp
  hence "16^2 = R^2 - r^2" by (simp add: power2_eq_square)
  hence "256 = R^2 - r^2" by simp
  let ?k = "R^2 - r^2"
  have "?k = 256" by (simp add: ‹256 = R^2 - r^2›)
  moreover have "(R^2 - r^2) * π = ?k * π" by simp
  ultimately show ?thesis by blast
qed