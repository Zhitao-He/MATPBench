theory QuadrilateralProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral_problem =
  fixes A B C D :: "real^2"
  assumes AB_length: "norm (A - B) = 18"
  and BA_perp_DA: "A - B ⟂ D - A" 
  from angle_ADB and BA_perp_DA
  have "sin(angle (B - A) (D - A)) = sin(pi/3)" by simp
  also have "sin(pi/3) = sqrt 3 / 2" by simp
  from AB_length and angle_ABC and angle_ADB
  have "z = 18 * sin(pi/3) / sin(pi/4)" by (metis sine_law)
  also have "sin(pi/4) = 1/sqrt 2" by simp
  also have "z = 18 * (sqrt 3 / 2) * sqrt 2 = 18 * sqrt 3 / sqrt 2 = 12 * sqrt 3" 
    by (simp add: algebra_simps)
  finally show ?thesis .
qed