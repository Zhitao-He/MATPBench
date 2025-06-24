theory Angle_Problem
  imports Main
begin
locale angle_problem =
  fixes m6 :: real and m7 :: real and m8 :: real
  assumes complementary: "m6 + m8 = 90"
    and m8_val: "m8 = 47"
    and m7_val: "m7 = 90"
end