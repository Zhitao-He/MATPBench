theory TriangleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin

lemma triangle_value_c:
  fixes A B C :: "real × real"
  assumes "A ≠ B" and "B ≠ C" and "C ≠ A"
  assumes "let (a,b,c) = (dist C B, dist C A, dist A B) in
           angle A B C = pi/3 ∧ angle C A B = pi/6 ∧
           (B - C) • (A - C) = 0 ∧ b = 18"
  shows "dist A B = 12 * sqrt 3"
begin
  (* 这里只需要形式化定义，无需证明 *)
end

end