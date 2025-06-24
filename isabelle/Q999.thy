theory Geometry_Tangent_Secant
  imports Complex_Main
begin
locale geometry_setup =
  fixes P A B C O D E :: "'a::euclidean_space"
  assumes
    "dist O A = dist O B"
    "dist O A = dist O C"
    "orthogonal (A - O) (P - A)"
    "collinear {P, B, C}"
    "dist O B = dist O A"
    "dist O C = dist O A"
    "D ∈ open_segment A O"
    "orthogonal (A - D) (O - P)"
    "E ≠ C"
    "E ≠ B"
    "E ≠ D"
    "E ≠ A"
    "E ≠ O"
    "E ≠ P"
    "E ≠ D"
    "E ∈ set (circle_intersections (circumcenter A D C) (dist (circumcenter A D C) A) B C)"
begin
definition angle :: "'a ⇒ 'a ⇒ 'a ⇒ real" where
  "angle X Y Z = acos (((X - Y) ⋅ (Z - Y)) / (norm (X - Y) * norm (Z - Y)))"
theorem angle_BAE_eq_ACB:
  "angle B A E = angle A C B"
  sorry
end
end