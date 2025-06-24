theory Geometry_Problem
imports "HOL-Analysis.Euclidean_Geometry"
begin
type_synonym point = "real^2"
consts
  A :: point
  B :: point
  C :: point
  D :: point
  x :: real
  y :: real
  z :: real
axioms
  len_AB: "dist A B = y" and
  len_AD: "dist A D = z" and
  len_BD: "dist B D = (4::real)" and
  len_CB: "dist C B = x" and
  len_CD: "dist C D = (10::real)" and
  B_on_segment_AD: "dist A B + dist B D = dist A D" and
  perp_ABC: "orthogonal (A - B) (C - B)" and
  perp_DCA: "orthogonal (D - C) (A - C)" and
  A_ne_B: "A ≠ B" and
  A_ne_C: "A ≠ C" and
  A_ne_D: "A ≠ D" and
  B_ne_C: "B ≠ C" and
  B_ne_D: "B ≠ D" and
  C_ne_D: "C ≠ D" and
  x_is_positive: "x > 0" and
  y_is_positive: "y > 0" and
  not_collinear_ABC: "¬ collinear {A, B, C}" and
  not_collinear_ACD: "¬ collinear {A, C, D}" and
  not_collinear_CBD: "¬ collinear {C, B, D}"
theorem Value_of_z:
  "z = (25::real)"
  oops 
end