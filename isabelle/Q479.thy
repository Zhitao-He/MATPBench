theory PerimeterTriangle
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
(* Define the plane as R^2 *)
type_synonym point = "real × real"
(* Function to calculate distance between two points *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
(* Theorem about the perimeter of triangle AMB *)
theorem perimeter_triangle_AMB_80:
  "let C = (0::real, 0::real);
       M = (12::real, 0::real);
       B = (42::real, 0::real);
       A = (12::real, 16::real)
   in distance A M + distance M B + distance B A = 80"
  by (auto simp add: distance_def Let_def)