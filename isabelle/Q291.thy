theory HexagonTriangles
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition hexagon_vertex :: "nat ⇒ complex" where
  "hexagon_vertex k = 4 * (cos (k * (pi/3)) + sin (k * (pi/3)) * \<i>)"
definition triangle1 :: "complex set" where
  "triangle1 = {hexagon_vertex 0, hexagon_vertex 2, hexagon_vertex 4}"
definition triangle2 :: "complex set" where
  "triangle2 = {hexagon_vertex 1, hexagon_vertex 3, hexagon_vertex 5}"
definition triangle_area :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "triangle_area a b c = (1/2) * norm (Im((b - a) * cnj(c - a)))"
definition in_triangle :: "complex ⇒ complex ⇒ complex ⇒ complex ⇒ bool" where
  "in_triangle p a b c = (∃ u v w. u ≥ 0 ∧ v ≥ 0 ∧ w ≥ 0 ∧ u + v + w = 1 ∧ p = u*a + v*b + w*c)"
theorem intersection_area:
  "let 
     a = hexagon_vertex 0;
     b = hexagon_vertex 2;
     c = hexagon_vertex 4;
     d = hexagon_vertex 1;
     e = hexagon_vertex 3;
     f = hexagon_vertex 5
   in
   (\<exists>p. p ∈ triangle1 ∩ triangle2) ∧
   (cmod (a - b) = 4 * sqrt 3) ∧
   (cmod (c - d) = 4 * sqrt 3) ∧
   (cmod (e - f) = 4 * sqrt 3) ∧
   (area (triangle1 ∩ triangle2) = 8 * sqrt 3)"
  sorry