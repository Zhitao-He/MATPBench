theory LenaWisconsinParallelCircumference
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem lena_wisconsin_parallel_circumference:
  "let equator_circumference = 25100 :: real;
       earth_radius = equator_circumference / (2 * pi);
       latitude_rad = pi / 4;  (* 45° in radians *)
       parallel_radius = earth_radius * cos latitude_rad;
       parallel_circumference = 2 * pi * parallel_radius
   in floor (parallel_circumference / 100) * 100 = 17700"
proof -
  let ?equator_circumference = "25100 :: real"
  let ?earth_radius = "?equator_circumference / (2 * pi)"
  let ?latitude_rad = "pi / 4"  (* 45° in radians *)
  let ?parallel_radius = "?earth_radius * cos ?latitude_rad"
  let ?parallel_circumference = "2 * pi * ?parallel_radius"
  have "cos (pi / 4) = sqrt 2 / 2"
    by (simp add: cos_pi_div_4)
  have "?parallel_radius = ?earth_radius * (sqrt 2 / 2)"
    by (simp add: cos_pi_div_4)
  have "?parallel_circumference = 2 * pi * ?earth_radius * (sqrt 2 / 2)"
    by (simp add: algebra_simps)
  also have "... = ?equator_circumference * (sqrt 2 / 2)"
    by (simp add: divide_simps mult.assoc mult.commute)
  also have "... = 25100 * (sqrt 2 / 2)"
    by simp
  also have "... ≈ 17748.8"
    by (approximation 6)
  hence "floor (?parallel_circumference / 100) * 100 = 17700"
    by (approximation 2)
  thus ?thesis by simp
qed