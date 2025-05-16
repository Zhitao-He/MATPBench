theory Triangle_Angle_Equality
imports Complex_Main "HOL-Analysis.Analysis"
begin

type_synonym point = "real × real"

definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"

definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C = (∃k. px B = px A + k * (px C - px A) ∧ 
                        py B = py A + k * (py C - py A))"

definition midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "midpoint A B D = (px D = (px A + px B)/2 ∧ py D = (py A + py B)/2)"

definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P = ((px P - px O)^2 + (py P - py O)^2 = r^2)"

definition perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C = (
    let v1x = px B - px A;
        v1y = py B - py A;
        v2x = px C - px A;
        v2y = py C - py A
    in v1x * v2x + v1y * v2y = 0)"

definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel A B C D = (
    let v1x = px B - px A;
        v1y = py B - py A;
        v2x = px D - px C;
        v2y = py D - py C
    in v1x * v2y = v1y * v2x)"

definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B = (
    let v1x = px A - px O;
        v1y = py A - py O;
        v2x = px B - px O;
        v2y = py B - py O;
        d1 = sqrt (v1x^2 + v1y^2);
        d2 = sqrt (v2x^2 + v2y^2);
        dot = v1x * v2x + v1y * v2y
    in arccos (dot / (d1 * d2)))"

theorem triangle_angle_equality:
  fixes A B C O D E F G :: point
  fixes r :: real
  assumes "¬ colinear A B C"
  assumes "on_circle O r A ∧ on_circle O r B ∧ on_circle O r C"
  assumes "midpoint B C D"
  assumes "∃k1. k1 ≠ 0 ∧ E = (px A + k1 * (px D - px A), py A + k1 * (py D - py A)) ∧ 
                on_circle O r E ∧ A ≠ E"
  assumes "∃k2. k2 ≠ 0 ∧ F = (px E + k2 * (px D - px E), py E + k2 * (py D - py E)) ∧ 
                on_circle O r F ∧ parallel E F B C ∧ E ≠ F"
  assumes "∃k3. G = (px A + k3 * (px E - px A), py A + k3 * (py E - py A)) ∧ 
                perpendicular C G A C"
  shows "angle A G C = angle F G C"
  sorry

end