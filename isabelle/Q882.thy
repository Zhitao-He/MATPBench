theory TriangleProblem
imports 
  Main
  "HOL-Analysis.Analysis"
begin

(* 定义三角形的余弦定理 *)
lemma cosine_law:
  fixes a b c :: real
  assumes "a > 0" "b > 0" "c > 0"
  shows "c^2 = a^2 + b^2 - 2 * a * b * cos(angle_C)"
  where "angle_C = arccos((a^2 + b^2 - c^2) / (2 * a * b))"
  by (simp add: cos_arccos)

(* 解决特定三角形问题 *)
theorem triangle_side_length:
  fixes A B C :: "real × real"
  assumes "dist A C = 5"
    and "dist B A = 12" 
    and "angle B A C = pi/3" (* 60度转换为弧度 *)
  shows "dist C B = sqrt 109"
proof -
  (* 使用余弦定理计算CB *)
  have "dist C B^2 = dist B A^2 + dist A C^2 - 2 * dist B A * dist A C * cos(angle B A C)"
    by (simp add: cosine_law)
  also have "... = 12^2 + 5^2 - 2 * 12 * 5 * cos(pi/3)"
    using assms by simp
  also have "... = 144 + 25 - 120 * 0.5"
    by (simp add: cos_60)
  also have "... = 169 - 60"
    by simp
  also have "... = 109"
    by simp
  finally have "dist C B^2 = 109" .
  thus "dist C B = sqrt 109"
    by (simp add: real_sqrt_unique)
qed

end