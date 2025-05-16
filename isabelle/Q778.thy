theory Triangle_Problem
  imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma triangle_RST_side_length:
  fixes R S T :: "complex"
  assumes "dist S T = 7"
          "angle R S T = 2*pi/3" 
  have "angle T R S = pi - angle R S T - angle S T R"
    by (simp add: triangle_angle_sum assms)
  also have "... = pi - 2*pi/3 - pi/6"
    by (simp add: assms)
  also have "... = pi/6"
    by simp
  finally have angle_TRS: "angle T R S = pi/6" .
  have "dist R T / sin (angle T R S) = dist S T / sin (angle S T R)"
    by (rule law_of_sines)
  also have "... = 7 / sin (pi/6)"
    by (simp add: assms)
  also have "sin (pi/6) = 1/2"
    by simp
  also have "7 / (1/2) = 14"
    by simp
  finally have "dist R T / sin (pi/6) = 14" .
  have "dist R T = 14 * sin (pi/6)"
    using `dist R T / sin (pi/6) = 14` by (simp add: field_simps)
  also have "... = 14 * (1/2)"
    by simp
  also have "... = 7"
    by simp
  also have "sin (angle R S T) = sin (2*pi/3) = sin (pi - pi/3) = sin (pi/3)"
    by (simp add: assms sin_supplementary)
  also have "sin (pi/3) = sqrt 3 / 2"
    by simp
  have "dist R T / sin (angle R S T) = dist S T / sin (angle S T R)"
    by (rule law_of_sines)
  also have "... = 7 / sin (pi/6)"
    by (simp add: assms)
  also have "sin (pi/6) = 1/2"
    by simp
  also have "sin (2*pi/3) = sqrt 3 / 2"
    by simp
  have "dist R T = dist S T * sin (angle R S T) / sin (angle S T R)"
    using law_of_sines by (simp add: field_simps)
  also have "... = 7 * (sqrt 3 / 2) / (1/2)"
    by (simp add: assms)
  also have "... = 7 * sqrt 3"
    by simp
  finally show ?thesis .
qed