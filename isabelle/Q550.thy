theory CircleAngleProblem
  imports Complex_Main "HOL-Analysis.Analysis"
begin
locale circle_problem =
  fixes G :: "complex" 
  fixes B C D E :: "complex" 
  fixes x :: real 
  assumes on_circle: "cmod (B - G) = cmod (C - G)" "cmod (C - G) = cmod (D - G)" 
                    "cmod (D - G) = cmod (E - G)" "cmod (E - G) = cmod (B - G)"
  defines "angle v w ≡ arg(w/v)"
  defines "rad_to_deg α ≡ α * (180/pi)"
  defines "deg_to_rad α ≡ α * (pi/180)"
  assumes angle_BGE: "rad_to_deg(angle (B - G) (E - G)) = x"
  assumes angle_CGD: "rad_to_deg(angle (C - G) (D - G)) = 135"
  assumes angle_DGB: "rad_to_deg(angle (D - G) (B - G)) = 145"
  assumes angle_EGC: "rad_to_deg(angle (E - G) (C - G)) = x"
begin
lemma circle_angles:
  "x + 135 + 145 + x = 360"
proof -
  have "rad_to_deg(angle (B - G) (E - G)) + rad_to_deg(angle (E - G) (C - G)) + 
        rad_to_deg(angle (C - G) (D - G)) + rad_to_deg(angle (D - G) (B - G)) = 360"
    by (simp add: algebra_simps)
  then have "x + x + 135 + 145 = 360"
    using angle_BGE angle_CGD angle_DGB angle_EGC by simp
  then have "2*x + 280 = 360" by simp
  then have "2*x = 80" by simp
  thus "x + 135 + 145 + x = 360" by simp
qed
theorem compute_x: "x = 40"
proof -
  have "x + 135 + 145 + x = 360" using circle_angles .
  then have "2*x + 280 = 360" by simp
  then have "2*x = 80" by simp
  then have "x = 40" by simp
  thus "x = 40" .
qed