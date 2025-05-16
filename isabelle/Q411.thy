theory CircleTriangleArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition circle_area :: "real ⇒ real" where
  "circle_area r = π * r^2"
definition triangle_area :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "triangle_area A B C = (1/2) * abs (fst A * (snd B - snd C) + 
                                     fst B * (snd C - snd A) + 
                                     fst C * (snd A - snd B))"
theorem circle_triangle_shaded_area:
  "let A = (-2, 0);
       B = (2, 0);
       P = (0, 0);
       r = 2;
       C = (1, sqrt 3)
   in
   let area_circle = circle_area r;
       area_triangle = triangle_area A B C
   in
   area_circle - area_triangle = 4 * π - 2 * sqrt 3"
proof -
  let ?A = "(-2::real, 0::real)"
  let ?B = "(2::real, 0::real)"
  let ?P = "(0::real, 0::real)"
  let ?r = "2::real"
  let ?C = "(1::real, sqrt 3::real)"
  have circle_area_calc: "circle_area ?r = π * ?r^2" by (simp add: circle_area_def)
  also have "... = π * 4" by simp
  also have "... = 4 * π" by (simp add: mult.commute)
  finally have area_circle: "circle_area ?r = 4 * π" .
  have triangle_area_calc: "triangle_area ?A ?B ?C = (1/2) * abs (fst ?A * (snd ?B - snd ?C) + 
                                                  fst ?B * (snd ?C - snd ?A) + 
                                                  fst ?C * (snd ?A - snd ?B))"
    by (simp add: triangle_area_def)
  also have "... = (1/2) * abs ((-2) * (0 - sqrt 3) + 
                             2 * (sqrt 3 - 0) + 
                             1 * (0 - 0))" by simp
  also have "... = (1/2) * abs (2 * sqrt 3 + 2 * sqrt 3)" by simp
  also have "... = (1/2) * abs (4 * sqrt 3)" by simp
  also have "... = (1/2) * (4 * sqrt 3)" by simp
  also have "... = 2 * sqrt 3" by simp
  finally have area_triangle: "triangle_area ?A ?B ?C = 2 * sqrt 3" .
  have "circle_area ?r - triangle_area ?A ?B ?C = 4 * π - 2 * sqrt 3"
    using area_circle area_triangle by simp
  thus ?thesis by simp
qed