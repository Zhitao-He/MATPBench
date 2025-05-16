theory AngleBisectorCircleTheorem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "complex"
(* Distance between two points *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = cmod (p - q)"
(* A line through two points *)
definition line_through :: "point ⇒ point ⇒ point set" where
  "line_through p q = {z. ∃t::real. z = p + t * (q - p)}"
(* Check if a point is on a line *)
definition on_line :: "point ⇒ point set ⇒ bool" where
  "on_line p l = (p ∈ l)"
(* Check if three points are colinear *)
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear p q r = (∃t::real. r - p = t * (q - p) ∧ t ≠ 0 ∧ t ≠ 1)"
(* Midpoint of two points *)
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = (p + q) / 2"
(* Check if a point is the midpoint of two others *)
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint m p q = (m = midpoint p q)"
(* Circle with center and point on the circle *)
definition circle :: "point ⇒ point ⇒ point set" where
  "circle c p = {z. dist c z = dist c p}"
(* Check if a point is on a circle *)
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle c p = (dist c p = dist c c')" for c' where "c' ∈ circle c p"
(* Vectors are perpendicular *)
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular a b c d = (Re((b - a) * cnj(d - c)) = 0)"
(* Segment representation *)
definition seg :: "point ⇒ point ⇒ point ⇒ point" where
  "seg a b = (a, b)"
(* Angle bisector construction *)
definition angle_bisector_point :: "point ⇒ point ⇒ point ⇒ point" where
  "angle_bisector_point p q r = q + (p - q) / cmod (p - q) + (r - q) / cmod (r - q)"
context
  fixes A B C O D E F M N :: point
  assumes ABC_noncollinear: "¬ colinear A B C"
  assumes O_circum: "on_circle O A ∧ on_circle O B ∧ on_circle O C"
  assumes D_on_bisector: "on_circle O D ∧ D ≠ A ∧ 
                         colinear A D (angle_bisector_point B A C)"
  assumes E_def: "E = midpoint B C"
  assumes EF_perp_AD: "perpendicular E F A D"
  assumes line_DF_def: "line_through D F"
  assumes MN_perp_DF: "colinear M F N ∧ perpendicular M N D F"
  assumes M_on_AB: "on_line M (line_through A B)"
  assumes N_on_AC: "on_line N (line_through A C)"
  assumes F_on_MN: "on_line F (line_through M N)"
begin
theorem triangle_circle_bisector_FM_eq_FN:
  "dist F M = dist F N"
  oops