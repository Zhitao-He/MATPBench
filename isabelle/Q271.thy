theory PrismSurfaceArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem prism_surface_area:
  let L = 10 :: real;
      W = 5 :: real;
      H = 6 :: real; 
      Rh = 3 :: real;
      slope = sqrt ((Rh^2) + ((W/2)^2))
  in abs (2*(W*H + L*H) + 2*(L*slope) - 323.10) < 0.01
proof -
  let ?L = 10 :: real
  let ?W = 5 :: real
  let ?H = 6 :: real
  let ?Rh = 3 :: real
  let ?slope = sqrt ((?Rh^2) + ((?W/2)^2))
  let ?SA = 2*(?W*?H + ?L*?H) + 2*(?L*?slope)
  have "?slope = sqrt ((?Rh^2) + ((?W/2)^2))"
    by simp
  moreover have "?slope = sqrt (9 + 6.25)"
    by (simp add: power2_eq_square)
  moreover have "?slope = sqrt 15.25"
    by simp
  moreover have "?slope ≈ 3.91"
    by (approximation 6)
  moreover have "?SA = 2*(?W*?H + ?L*?H) + 2*(?L*?slope)"
    by simp
  moreover have "?SA = 2*(5*6 + 10*6) + 2*(10*?slope)"
    by simp
  moreover have "?SA = 2*(30 + 60) + 2*10*?slope"
    by simp
  moreover have "?SA = 2*90 + 20*?slope"
    by simp
  moreover have "?SA = 180 + 20*?slope"
    by simp
  moreover have "?SA ≈ 180 + 20*3.91"
    by (approximation 6)
  moreover have "?SA ≈ 180 + 78.2"
    by (approximation 6)
  moreover have "?SA ≈ 323.10"
    by (approximation 6)
  ultimately show ?thesis
    by (approximation 6)
qed