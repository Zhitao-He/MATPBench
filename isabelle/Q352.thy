theory Geometry_Angle75
  imports Main
begin
locale geometry_problem =
  fixes A B C D :: "'a"
  assumes distinct: "A ≠ B" "B ≠ C" "C ≠ D" "A ≠ C" "A ≠ D" "B ≠ D" "A ≠ C" "B ≠ C"
  and eq_AB_BC: "dist A B = dist B C"
  and angle_ABD: "angle A B D = 30"
  and angle_C: "angle B C A = 50"
  and angle_CBD: "angle C B D = 80"
definition angle_A_is_75 :: "bool" where
  "angle_A_is_75 ≡ (angle B A D = 75)"
end