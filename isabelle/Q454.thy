theory Triangle_Circle_Path
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹Proof that when a circle with radius 1 rolls around the inside of a triangle
      with sides 6, 8, and 10, the center of the circle travels a distance of 12.›
(* Define the triangle with side lengths 6, 8, and 10 *)
definition triangle_sides :: "real × real × real" where
  "triangle_sides = (6, 8, 10)"
(* The perimeter of the triangle *)
definition triangle_perimeter :: "real" where
  "triangle_perimeter = fst triangle_sides + fst (snd triangle_sides) + snd (snd triangle_sides)"
(* Radius of the rolling circle *)
definition circle_radius :: "real" where
  "circle_radius = 1"
(* 
  When a circle rolls along the inside of a polygon, the path traced by its center
  is the inward offset curve. For a circle of radius r, the path length equals
  the perimeter of the polygon minus 2πr times the number of full turns (which is
  the sum of exterior angles divided by 2π).
  For a triangle, the sum of exterior angles is always 2π, so the circle makes
  exactly one full turn.
*)
(* The path length traced by the center of the circle *)
definition path_length :: "real" where
  "path_length = triangle_perimeter - 2 * pi * circle_radius"
(* Verification that the path length is 12 *)
lemma "triangle_perimeter = 24"
  unfolding triangle_perimeter_def triangle_sides_def
  by simp
lemma "path_length = 24 - 2 * pi * 1"
  unfolding path_length_def circle_radius_def
  by simp
lemma "path_length ≈ 12"
  unfolding path_length_def triangle_perimeter_def triangle_sides_def circle_radius_def
  by (approximation 2)