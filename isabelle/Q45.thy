theory ConcentricCircles
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem concentric_circles_ring_area:
  fixes O A B C :: "complex" 
  fixes r1 r2 :: "real"
  assumes "O ≠ A"
    and "0 < r1" "0 < r2" "r1 < r2"
    and "norm (A - O) = r2" "norm (B - O) = r2"  
    and "norm (C - O) = r1"  
    and "norm (B - A) = 6"  
    and "((C - O) ⊥ (B - A))"  
    and "C ∈ closed_segment A B"  
  shows "pi * (r2^2 - r1^2) = 9 * pi"
proof -
  have "r1^2 = norm (C - O)^2" using assms(7) by simp
  also have "... = |(C - O) • (C - O)|" by (simp add: complex_inner_norm)
  also have "... = |(C - O) • (C - O)|" by simp
  have "let h = norm ((C - O) • (B - A) / norm (B - A)) in
        h = r1" using assms(7,8,9) by (simp add: complex_vector_geometry)
  have "r2^2 = r1^2 + 9"
  proof -
    have "r2^2 - r1^2 = 9" 
      using assms by (metis power2_eq_square real_vector_geometry)
    thus ?thesis by simp
  qed
  have "pi * (r2^2 - r1^2) = pi * 9" using `r2^2 = r1^2 + 9` by simp
  thus ?thesis by simp
qed