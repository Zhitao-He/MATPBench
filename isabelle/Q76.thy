theory ConcentricCircles
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem concentric_circles_equal_areas:
  fixes r₁ r₂ r₃ :: real
  assumes "r₁ = 2" 
      and "0 < r₁" "0 < r₂" "0 < r₃" 
      and "r₁ < r₂" "r₂ < r₃"
      and "π * (r₁² - 0²) / 4 = π * (r₂² - r₁²) / 4"  
      and "π * (r₂² - r₁²) / 4 = π * (r₃² - r₂²) / 4"  
  shows "(r₁ * r₂ * r₃)² = 384"
begin
  from assms(7) have "r₁² = r₂² - r₁²" by simp
  hence "2 * r₁² = r₂²" by simp
  hence "r₂² = 2 * r₁²" by simp
  from assms(8) have "r₂² - r₁² = r₃² - r₂²" by simp
  hence "2 * r₂² = r₁² + r₃²" by simp
  have "r₂² = 2 * r₁²" by (simp add ‹r₂² = 2 * r₁²›)
  hence "2 * 2 * r₁² = r₁² + r₃²" using ‹2 * r₂² = r₁² + r₃²› by simp
  hence "4 * r₁² = r₁² + r₃²" by simp
  hence "3 * r₁² = r₃²" by simp
  hence "r₃² = 3 * r₁²" by simp
  have "r₁ = 2" using assms(1) by simp
  hence "r₁² = 4" by simp
  have "r₂² = 2 * r₁²" by (simp add ‹r₂² = 2 * r₁²›)
  hence "r₂² = 2 * 4" using ‹r₁² = 4› by simp
  hence "r₂² = 8" by simp
  hence "r₂ = 2 * sqrt 2" by (simp add real_sqrt_mult)
  have "r₃² = 3 * r₁²" by (simp add ‹r₃² = 3 * r₁²›)
  hence "r₃² = 3 * 4" using ‹r₁² = 4› by simp
  hence "r₃² = 12" by simp
  hence "r₃ = 2 * sqrt 3" by (simp add real_sqrt_mult)
  have "r₁ * r₂ * r₃ = 2 * (2 * sqrt 2) * (2 * sqrt 3)" 
    using ‹r₁ = 2› ‹r₂ = 2 * sqrt 2› ‹r₃ = 2 * sqrt 3› by simp
  hence "r₁ * r₂ * r₃ = 8 * sqrt 2 * sqrt 3" by simp
  hence "r₁ * r₂ * r₃ = 8 * sqrt 6" by (simp add real_sqrt_mult)
  have "(r₁ * r₂ * r₃)² = (8 * sqrt 6)²" 
    using ‹r₁ * r₂ * r₃ = 8 * sqrt 6› by simp
  hence "(r₁ * r₂ * r₃)² = 64 * 6" by simp
  thus "(r₁ * r₂ * r₃)² = 384" by simp