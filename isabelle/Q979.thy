theory Triangle_Circles_Angles
  imports
    Complex_Main
    "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition line_of :: "point ⇒ point ⇒ point set" where
  "line_of A B = {P. ∃t. P = (1 - t) *⇩R A + t *⇩R B}"
definition segment :: "point ⇒ point ⇒ point set" where
  "segment A B = {P. ∃t. 0 ≤ t ∧ t ≤ 1 ∧ P = (1 - t) *⇩R A + t *⇩R B}"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⟷ P ∈ line_of A B"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C ⟷ C ∈ line_of A B"
definition parallel :: "point set ⇒ point set ⇒ bool" where
  "parallel L1 L2 = (∃A B C D. L1 = line_of A B ∧ L2 = line_of C D ∧
                     (∃a b c d. A = (a, b) ∧ B = (a + 1, b + c) ∧ 
                               C = (d, 0) ∧ D = (d + 1, c)))"
definition inter_pt :: "point ⇒ point set ⇒ point set ⇒ bool" where
  "inter_pt P L1 L2 = (P ∈ L1 ∧ P ∈ L2)"
definition circumcircle :: "point ⇒ point ⇒ point ⇒ point set" where
  "circumcircle A B C = {P. dist P (center A B C) = radius A B C}"
definition center :: "point ⇒ point ⇒ point ⇒ point" where
  "center A B C = undefined" 
definition radius :: "point ⇒ point ⇒ point ⇒ real" where
  "radius A B C = dist (center A B C) A"
definition on_circle :: "point ⇒ point set ⇒ bool" where
  "on_circle P C = (P ∈ C)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = undefined" 
theorem triangle_circles_angles_equality:
  fixes A B C D E F G :: point
  assumes 
    "¬ colinear A B C"
    "on_line D A B"
    "on_line E A C"
    "parallel (line_of D E) (line_of B C)"
    "inter_pt F (line_of B E) (line_of C D)"
    "G ≠ F"
    "on_circle G (circumcircle B D F)"
    "on_circle G (circumcircle C E F)"
  shows "angle B A F = angle C A G"
  sorry