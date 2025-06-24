theory Isosceles_Triangle_AC_Length
  imports Main
begin
locale triangle_ABC =
  fixes x :: real
  assumes AB_def: "AB = 9 * x - 1"
    and AC_def: "AC = 4 * x + 1"
    and BC_def: "BC = 5 * x - 0.5"
    and isosceles: "AC = BC"
theorem (in triangle_ABC) AC_length_is_7:
  assumes "isosceles"
  shows "AC = 7"
proof -
  from isosceles AC_def BC_def have eq: "4 * x + 1 = 5 * x - 0.5" by simp
  hence "5 * x - 4 * x = 1 + 0.5" by simp
  hence "x = 1.5" by simp
  with AC_def have "AC = 4 * 1.5 + 1" by simp
  thus "AC = 7" by simp
qed
end