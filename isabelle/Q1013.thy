theory Geometry_Circumcenter_On_AB
  imports Complex_Main
begin
locale geometry_setup =
  fixes O P A B C D E F :: "complex"
  assumes
    "A ≠ B"
    "A ≠ O" "B ≠ O" "A ≠ P" "B ≠ P"
    "dist O A = dist O B"  
    "dist P A = dist P B"  
    "collinear {O, C, D}"
    "C ≠ D"
    "dist P C = dist P D"  
    "collinear {P, E, F}"
    "E ≠ F"
    "dist O E = dist O F"  
    "∃Q. ∀X∈{C,E,D,F}. dist Q X = r" for r Q
begin
definition quadrilateral_circumcenter :: "complex" where
  "quadrilateral_circumcenter = (SOME Q. ∃r. ∀X∈{C,E,D,F}. dist Q X = r)"
theorem circumcenter_on_AB:
  "collinear {A, B, quadrilateral_circumcenter}"
  sorry
end
end