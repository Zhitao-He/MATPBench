theory CircumcircleTheorem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance A B = norm (A - B)"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle O P = (∃r > 0. distance O P = r)"
definition on_same_circle :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_same_circle O P Q = (distance O P = distance O Q)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P = (∃t. P = A + t *R (B - A))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = ((B - A) •ᵥ (D - C) = 0)"
theorem geometry_circumcircle_CG_eq_CD:
  fixes A B C D E F G O :: point
  assumes "on_same_circle O A B" "on_same_circle O B C" "on_same_circle O C A"
    and "on_same_circle O D A"
    and arc_D_midpoint: "∃r > 0. distance O A = r ∧ distance O B = r ∧ distance O C = r ∧ distance O D = r 
                          ∧ (angle(B - O, A - O) = angle(A - O, C - O)) 
                          ∧ (angle(B - O, D - O) = angle(D - O, C - O))"
    and "on_same_circle O E B"
    and arc_E_midpoint: "∃r > 0. distance O B = r ∧ distance O C = r ∧ distance O E = r
                          ∧ angle(B - O, E - O) = angle(E - O, C - O)"
    and "on_line A B F"
    and "perpendicular C F A B"
    and "perpendicular F G E F"
    and "∃k. G = D + k *R (A - D)"
  shows "distance C G = distance C D"
  sorry