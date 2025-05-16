theory CircumcirclePerpendicularProperty
imports Main HOL.Real
begin
type_synonym point = "real × real"
definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C = (∃k. px B = px A + k * (px C - px A) ∧ 
                         py B = py A + k * (py C - py A))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((px A + px B) / 2, (py A + py B) / 2)"
definition eq_angle :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "eq_angle A B C D E F = 
    (let v1x = px B - px A; v1y = py B - py A;
         v2x = px C - px A; v2y = py C - py A;
         w1x = px E - px D; w1y = py E - py D;
         w2x = px F - px D; w2y = py F - py D
     in v1x * v2y - v1y * v2x = w1x * w2y - w1y * w2x ∧
        v1x * v2x + v1y * v2y = w1x * w2x + w1y * w2y)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P = (∃k. px P = px A + k*(px B - px A) ∧ 
                        py P = py A + k*(py B - py A))"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B P = (∃k. 0 ≤ k ∧ k ≤ 1 ∧ 
                           px P = px A + k*(px B - px A) ∧ 
                           py P = py A + k*(py B - py A))"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P = ((px P - px O)^2 + (py P - py O)^2 = r^2)"
definition perp :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perp A B C D = 
    (let u1 = px B - px A; u2 = py B - py A;
         v1 = px D - px C; v2 = py D - py C
     in u1 * v1 + u2 * v2 = 0)"
theorem geometry_circumcircle_midpoint_perpendicular:
  fixes A B C D E F G O M :: "point" and r :: "real"
  assumes 
    "¬ colinear A B C" and
    "on_segment B C D" and
    "eq_angle D A C A B D" and
    "r > 0" and
    "on_circle O r B" and
    "on_circle O r D" and
    "on_circle O r E ∧ on_line A B E ∧ E ≠ B" and
    "on_circle O r F ∧ on_line A D F ∧ F ≠ D" and
    "∃l1 l2. px G = px B + l1 * (px F - px B) ∧
             py G = py B + l1 * (py F - py B) ∧
             px G = px D + l2 * (px E - px D) ∧
             py G = py D + l2 * (py E - py D)" and
    "M = midpoint A G"
  shows "perp C M A O"
sorry