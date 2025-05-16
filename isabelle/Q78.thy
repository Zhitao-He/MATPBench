theory FlagRectangleProblem
imports Complex_Main
begin

theorem flag_rectangle_ratio:
  "let λ = 1/3 in
   λ < 1 ∧ 360 * λ = 120"
proof -
  let ?λ = "1/3::real"
  have "?λ < 1" by simp
  have "360 * ?λ = 120"
    by (simp add: divide_right_mono)
  thus ?thesis by blast
qed

end