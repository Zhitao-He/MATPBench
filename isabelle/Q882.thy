theory Triangle_Cosine_Problem
  imports Complex_Main
begin
locale triangle_setup =
  fixes A B C :: "'a::euclidean_space"
  assumes AC_len: "dist A C = 5"
    and BA_len: "dist B A = 12"
    and angle_BAC: "angle B A C = pi / 3"  
definition CB_len :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ real" where
  "CB_len A B C = dist C B"
theorem CB_value:
  assumes "triangle_setup A B C"
  shows "CB_len A B C = sqrt 109"
proof -
  interpret triangle_setup A B C by (fact assms)
  have "CB_len A B C ^ 2 = (dist A C)^2 + (dist B A)^2 - 2 * (dist A C) * (dist B A) * cos (angle B A C)"
    using Law_of_Cosines by auto
  also have "... = 5^2 + 12^2 - 2 * 5 * 12 * cos (pi / 3)"
    using AC_len BA_len angle_BAC by auto
  also have "cos (pi / 3) = 1/2" by simp
  also have "... = 25 + 144 - 2 * 5 * 12 * (1/2)"
    by simp
  also have "2 * 5 * 12 * (1/2) = 60"
    by simp
  also have "... = 25 + 144 - 60"
    by simp
  also have "... = 109"
    by simp
  finally have "CB_len A B C ^ 2 = 109" .
  thus ?thesis
    by (simp add: CB_len_def)
qed
end