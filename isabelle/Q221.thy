theory AreaCalculation
imports Complex_Main
begin

theorem area_quarter_circle:
  "let r = 7 :: real in
   let area = (1/4) * pi * r^2 in
   area = (147 * pi) / 4"
proof -
  let ?r = "7 :: real"
  let ?area = "(1/4) * pi * ?r^2"
  have "?area = (1/4) * pi * 49" by simp
  also have "... = (49 * pi) / 4" by (simp add: field_simps)
  also have "... = (147 * pi) / 4" by simp
  finally show ?thesis by simp
qed

end