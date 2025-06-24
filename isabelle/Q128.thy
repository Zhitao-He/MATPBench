theory Geometry_Problem
  imports Main
begin
locale geometry_problem =
  fixes A B C D E :: "'a::euclidean_space"
  assumes
    "collinear {B, D, C}" 
    "collinear {A, E, C}"
    "C ≠ B" "C ≠ D" "C ≠ A" "C ≠ E"
    "B ≠ D" "A ≠ E"
    "dist A B = dist B C"
    "dist B C = dist C D"
    "dist C D = dist C E"
    "let angle_A = angle B A C in
     let angle_B = angle A B C in
     angle_A = (5/2) * angle_B"
    "let angle_D = angle C D E in
     angle_D = (52.5 * pi) / 180"
end
end