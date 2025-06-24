theory Geometry_Problem
imports Main 
begin
consts a :: real 
consts b :: real 
consts angle_HED_in_triangle :: real 
consts angle_EDH_in_triangle :: real 
consts angle_DHE_in_triangle :: real 
axioms
  HED_is_a: "angle_HED_in_triangle = a"
  EDH_is_b: "angle_EDH_in_triangle = b"
  DHE_is_90: "angle_DHE_in_triangle = 90"
  triangle_angle_sum: "angle_HED_in_triangle + angle_EDH_in_triangle + angle_DHE_in_triangle = 180"
lemma problem_to_solve:
  "a + b - 90 = 0"
  sorry 
end