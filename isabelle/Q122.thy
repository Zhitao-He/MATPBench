theory TriangularBipyramid
imports Main "HOL-Library.Code_Numeral"
begin

theorem triangular_bipyramid_vertex_sum:
  fixes v3 v4 v5 :: int
  defines "S ≡ v3 + v4 + v5 + 6"
  assumes "1 + v3 + v4 = S"
    and "1 + v3 + v5 = S"
    and "1 + v4 + v5 = S"
    and "5 + v3 + v4 = S"
    and "5 + v3 + v5 = S"
    and "5 + v4 + v5 = S"
  shows "v3 + v4 + v5 = 11"
proof -
  from assms(1) have "1 + v3 + v4 = v3 + v4 + v5 + 6" by (simp add: S_def)
  hence "1 = v5 + 6" by simp
  hence "v5 = -5" by simp

  from assms(4) have "5 + v3 + v4 = v3 + v4 + v5 + 6" by (simp add: S_def)
  hence "5 = v5 + 6" by simp
  hence "v5 = -1" by simp

  with ‹v5 = -5› have False by simp
  thus ?thesis by contradiction
qed

end