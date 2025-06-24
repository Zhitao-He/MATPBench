theory Triangle_Equal_Angles
  imports Main
begin
locale triangle_equal_angles =
  fixes A B C :: "'a"
    and AB BC AC :: real
    and x :: real
  assumes AB_def: "AB = x + 4"
    and BC_def: "BC = 2 * x + 2"
    and AC_def: "AC = 3 * x - 1"
    and angle_eq: "∠ A B C = ∠ B A C"
    and x_val: "x = 3"
end