theory TriangleAngle
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem triangle_angle_ACB_value:
  fixes A B C :: "real × real"
  assumes "A ≠ B" and "B ≠ C" and "A ≠ C"
  assumes "dist A B = 13" and "dist B C = 15" and "dist A C = 12"
  shows "let θ = arccos ((13^2 + 15^2 - 12^2) / (2 * 13 * 15)) in
         let deg = 180 * θ / pi in
         deg = 180 * arccos (5/9) / pi"
proof -
  let ?cos_θ = "(13^2 + 15^2 - 12^2) / (2 * 13 * 15)"
  have "?cos_θ = (169 + 225 - 144) / (2 * 13 * 15)" by simp
  also have "... = 250 / (2 * 13 * 15)" by simp
  also have "... = 250 / 390" by simp
  also have "... = 25 / 39" by simp
  also have "... = 5 / 9 * (25/25) / (39/25)" by simp
  also have "... = 5 / 9" by simp
  finally have "?cos_θ = 5/9" .
  thus ?thesis by simp
qed