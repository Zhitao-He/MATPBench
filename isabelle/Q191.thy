theory GeometryProblem
  imports Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real ^ 2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = norm (A - B)"
definition lies_on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "lies_on_segment P A B ↔ (∃t::real. 0 ≤ t ∧ t ≤ 1 ∧ P = (1-t) *R A + t *R B)"
definition perimeter :: "point ⇒ point ⇒ point ⇒ real" where
  "perimeter A B C = dist A B + dist B C + dist C A"
locale GeometricProblem =
  fixes A B C D E :: point 
  assumes
    AC_positive: "dist A C > 0" and 
    right_angle_at_C: "HOL.angle (A - C) (B - C) = pi / 2" and 
    isosceles_ABC: "dist A C = dist B C" and 
    angle_CAD_positive: "HOL.angle (C - A) (D - A) > 0" and
    angle_bisector_AD: "HOL.angle (C - A) (D - A) = HOL.angle (D - A) (B - A)" and
    angle_sum_bisector: "HOL.angle (C - A) (D - A) + HOL.angle (D - A) (B - A) = HOL.angle (C - A) (B - A)" and
    D_on_BC: "lies_on_segment D B C" and
    E_on_AB: "lies_on_segment E A B" and
    DE_perp_AB: "HOL.angle (D - E) (A - E) = pi / 2" and
    length_AB: "dist A B = 6"
begin
lemma perimeter_DBE_equals_AB:
  "perimeter D B E = dist A B"
  sorry 
lemma perimeter_DBE_is_6:
  "perimeter D B E = 6"
  using perimeter_DBE_equals_AB length_AB by simp 
end
end