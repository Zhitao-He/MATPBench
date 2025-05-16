theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition dot :: "real × real ⇒ real × real ⇒ real" where
  "dot u v = fst u * fst v + snd u * snd v"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B)/2, (snd A + snd B)/2)"
definition perpendicular :: "real × real ⇒ real × real ⇒ bool" where
  "perpendicular u v ⟷ dot u v = 0"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (∃k. vec A B = k *⇩R vec A C ∨ vec A C = k *⇩R vec A B)"
definition orthocenter :: "point ⇒ point ⇒ point ⇒ point" where
  "orthocenter A B C = H" if "perpendicular (vec B C) (vec A H)" and
                           "perpendicular (vec A C) (vec B H)" and
                           "perpendicular (vec A B) (vec C H)"
definition concyclic :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concyclic A B C D ⟷ (∃center r. 
    (dist center A = r ∧ dist center B = r ∧ dist center C = r ∧ dist center D = r) ∧ r > 0)"
theorem putnam_geometry_concyclic_BCEH:
  fixes A B C H D E :: point
  assumes "¬ collinear A B C"
    and "orthocenter A B C = H"
    and "midpoint C H = D"
    and "E ∈ {P. ∃t. P = A + t *⇩R (D - A)}" 
    and "E ∈ {P. ∃t. P = B + t *⇩R (E - B)}" 
    and "perpendicular (vec B E) (vec A D)"
  shows "concyclic B C E H"
  oops