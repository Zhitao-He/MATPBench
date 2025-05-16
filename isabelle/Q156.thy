theory TrapezoidPQRS
  imports Main Real
begin
theorem trapezoid_PQRS:
  fixes PQ SR :: real
  assumes "PQ = 20" 
  assumes "SR = 30"
  assumes "area = 250"
  assumes "height = 10"
  shows "area = ((PQ + SR) / 2) * height"
begin
  have "((PQ + SR) / 2) * height = ((20 + 30) / 2) * 10" 
    using assms by simp
  also have "... = (50 / 2) * 10" by simp
  also have "... = 25 * 10" by simp
  also have "... = 250" by simp
  finally show "area = ((PQ + SR) / 2) * height" 
    using assms(3) by simp