theory TrianglePerimeter
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = 
    ((fst p2 - fst p1) * (fst p4 - fst p3) + (snd p2 - snd p1) * (snd p4 - snd p3) = 0)"
definition similar_triangles :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "similar_triangles a b c d e f = 
    (∃k>0. distance a b / distance d e = k ∧ 
           distance b c / distance e f = k ∧ 
           distance c a / distance f d = k)"
definition perimeter :: "point ⇒ point ⇒ point ⇒ real" where
  "perimeter p1 p2 p3 = distance p1 p2 + distance p2 p3 + distance p3 p1"
locale triangle_problem =
  fixes A B C D :: point
  assumes AD_length: "distance A D = 5"
  and BC_length: "distance B C = 32"
  and CD_length: "distance C D = 12"
  and AC_perp_BC: "perpendicular A C B C"
  and BD_perp_CD: "perpendicular B D C D"
  and triangles_similar: "similar_triangles A C B C B D"
context triangle_problem
begin
theorem perimeter_ACB: "perimeter A C B = sqrt 1193 + 45"
  sorry