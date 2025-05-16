theory TriangleGeometry
imports
  Complex_Main
  "HOL-Analysis.Elementary_Metric_Spaces"
begin
type_synonym point = "complex"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = cmod (p - q)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = (p + q) / 2"
definition centroid :: "point ⇒ point ⇒ point ⇒ point" where
  "centroid a b c = (a + b + c) / 3"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter a b c = 
    let
      a2 = cmod(a) * cmod(a);
      b2 = cmod(b) * cmod(b);
      c2 = cmod(c) * cmod(c);
      d = 2 * (Re(a) * (Im(b) - Im(c)) + Re(b) * (Im(c) - Im(a)) + Re(c) * (Im(a) - Im(b)));
      ux = ((a2 * (Im(b) - Im(c))) + (b2 * (Im(c) - Im(a))) + (c2 * (Im(a) - Im(b)))) / d;
      uy = ((a2 * (Re(c) - Re(b))) + (b2 * (Re(a) - Re(c))) + (c2 * (Re(b) - Re(a)))) / d
    in
      Complex ux uy"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle a b c = arg((a - b) / (c - b))"
locale acute_triangle =
  fixes A B C :: point
  assumes noncollinear: "Im((B - A) / (C - A)) ≠ 0"
  assumes acute_angles: "abs(angle B A C) < pi/2" "abs(angle C B A) < pi/2" "abs(angle A C B) < pi/2"
begin
  definition O :: point where "O = circumcenter A B C"
  definition G :: point where "G = centroid A B C"
  definition tangent_line_at_A :: "point ⇒ bool" where
    "tangent_line_at_A P ⟷ (P = A ∨ (P ≠ A ∧ 
                          ((P - A) • (A - O) = 0)))"
  definition perp_line_to_GO_at_G :: "point ⇒ bool" where
    "perp_line_to_GO_at_G P ⟷ (P = G ∨ (P ≠ G ∧ 
                             ((P - G) • (O - G) = 0)))"
  definition X :: point where
    "X = (SOME P. tangent_line_at_A P ∧ perp_line_to_GO_at_G P)"
  definition line_BC :: "point ⇒ bool" where
    "line_BC P ⟷ (∃t. P = (1 - t) * B + t * C)"
  definition Y :: point where
    "Y = (SOME P. (∃t. t > 0 ∧ P = (1 - t) * X + t * G) ∧ line_BC P)"
  lemma angle_ratio:
    assumes "angle C B A / angle B C A = 13 / 2"
    assumes "angle X O Y / angle B C A = 17 / 2"
    shows "angle B A C = 592/31"