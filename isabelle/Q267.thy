theory TrapezoidalPrism
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem trapezoidal_prism_surface_area:
  "let a = 10 :: real;
       b = 18 :: real;
       h = 3 :: real;
       s1 = 5 :: real;
       s2 = 8 :: real;
       L = 5 :: real;
       Tr = (a + b) * h / 2;
       S = 2 * Tr + a * L + b * L + s1 * L + s2 * L
   in S = 338"
  by (simp add: algebra_simps)