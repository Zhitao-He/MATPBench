theory Circumcircle_Geometry
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
locale circle_midpoint_theorem =
  fixes A B C D E F G O :: "real^2"
  assumes 
    ABC_noncollinear: "¬ collinear {A, B, C}"
    and O_circumcenter: "O = circumcenter A B C"
    and BC_diameter: "O = midpoint B C"
    and D_on_circumcircle: "dist O D = dist O A"
    and D_opposite_arc: "A ≠ D ∧ ¬collinear {D, B, C}"
    and E_on_BC: "∃t. E = B + t *\<^sub>R (C - B) ∧ 0 ≤ t ∧ t ≤ 1"
    and DE_perp_BC: "(E - D) ⦿ (C - B) = 0"
    and F_on_BA: "∃t. F = B + t *\<^sub>R (A - B) ∧ 0 ≤ t ∧ t ≤ 1"
    and DF_perp_BA: "(F - D) ⦿ (A - B) = 0"
    and G_intersection: "G ∈ affine hull {E, F} ∧ G ∈ affine hull {A, D}"
theorem midpoint_of_AD_G:
  assumes "circle_midpoint_theorem A B C D E F G O"
  shows "G = midpoint A D"
  oops