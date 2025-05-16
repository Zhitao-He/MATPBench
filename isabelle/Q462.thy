theory Rectangle_Area_Triangle
  imports Main HOL.Real_Vector_Spaces HOL.Real
begin
text ‹In the picture ABCD is a rectangle with AB=16, BC=12. Let E be such a point that AC ⊥ CE, CE=15. 
If F is the point of intersection of segments AE and CD, then the area of the triangle ACF is equal to 75.›
locale rectangle_problem =
  fixes A B C D E F :: "real^2"
  assumes rect_ABCD: "B = A + (0, 16)" "C = A + (12, 16)" "D = A + (12, 0)"
  assumes CE_perp_AC: "(C - A) • (E - C) = 0"
  assumes CE_len: "norm(E - C) = 15"
  assumes F_on_AE: "∃s. 0 < s ∧ s < 1 ∧ F = (1 - s) *⋅ A + s *⋅ E"
  assumes F_on_CD: "∃t. 0 < t ∧ t < 1 ∧ F = (1 - t) *⋅ C + t *⋅ D"
context rectangle_problem
begin
definition area_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_triangle P Q R = abs(det2 (Q - P, R - P)) / 2"
theorem rectangle_acf_area_75: "area_triangle A C F = 75"
  