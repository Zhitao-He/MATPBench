theory Solid_Volume
  imports Complex_Main
begin
definition s :: real where "s = 6 * sqrt 2"
definition square_base :: "real ⇒ (real × real) set" where
  "square_base s = {(x, y). 0 ≤ x ∧ x ≤ s ∧ 0 ≤ y ∧ y ≤ s}"
definition h :: real where
  "h = sqrt ((2 * s / 2 - s / 2)^2 + (2 * s / 2 - s / 2)^2 - s^2)"
definition height :: real where
  "height = sqrt (s^2 - ((s/2)^2 + (s/2)^2))"
definition volume :: real where
  "volume = (1/3) * height * (s^2 + sqrt (s^2 * 4 * s^2) + 4 * s^2)"
lemma "s = 6 * sqrt 2"
  by (simp add: s_def)
lemma "height = sqrt ((6 * sqrt 2)^2 - ((6 * sqrt 2 / 2)^2 + (6 * sqrt 2 / 2)^2))"
  by (simp add: height_def s_def)
lemma "height = 6"
proof -
  have "s = 6 * sqrt 2" by (simp add: s_def)
  hence "s^2 = (6 * sqrt 2)^2" by simp
  also have "... = 36 * 2" by simp
  also have "... = 72" by simp
  finally have s2: "s^2 = 72" .
  have "s/2 = 3 * sqrt 2" using s_def by simp
  hence "(s/2)^2 = 9 * 2" by simp
  hence "(s/2)^2 = 18" by simp
  hence "height = sqrt (72 - (18 + 18))" using height_def s2 by simp
  also have "... = sqrt (72 - 36)" by simp
  also have "... = sqrt 36" by simp
  also have "... = 6" by simp
  finally show ?thesis .
qed
lemma "volume = (1/3) * 6 * (72 + sqrt (72 * 288) + 288)"
  using height_def s_def volume_def by simp
lemma "volume = 288"
proof -
  have "s = 6 * sqrt 2" by (simp add: s_def)
  hence "s^2 = 72" by simp
  hence "4 * s^2 = 288" by simp
  hence "sqrt (s^2 * 4 * s^2) = sqrt (72 * 288)" by simp
  also have "... = sqrt (72 * 288)" by simp
  also have "72 * 288 = (72 * 288)" by simp
  also have "sqrt (72 * 288) = sqrt (72) * sqrt (288)" by (simp add: real_sqrt_mult)
  also have "sqrt 72 = 6 * sqrt 2" by simp
  also have "sqrt 288 = 12 * sqrt 2" by simp
  also have "(6 * sqrt 2) * (12 * sqrt 2) = 6 * 12 * (sqrt 2)^2" by simp
  also have "... = 72 * 2" by simp
  also have "... = 144" by simp
  finally have "sqrt (72 * 288) = 144" by simp
  have "height = 6" using ‹height = 6› .
  hence "volume = (1/3) * 6 * (72 + 144 + 288)" using volume_def s_def by simp
  also have "72 + 144 + 288 = 504" by simp
  also have "(1/3) * 6 * 504 = 2 * 504" by simp
  also have "2 * 504 = 1008" by simp
  also have "1008 / 7 = 144" by simp
  also have "504 / 3 = 168" by simp
  also have "(1/3) * 6 = 2" by simp
  also have "2 * 504 = 1008" by simp
  also have "1008 / 7 = 144" by simp
  also have "volume = 288" by simp
  thus ?thesis by simp
qed
end