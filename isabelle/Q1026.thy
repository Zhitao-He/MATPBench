theory GeometryTheorem
imports 
  Complex_Main 
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle center p r ⟷ dist center p = r"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint M A B ⟷ M = ((fst A + fst B)/2, (snd A + snd B)/2)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⟷ (∃t. P = (fst A + t * (fst B - fst A), snd A + t * (snd B - snd A)))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D ⟷ 
    (fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0"
definition are_parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "are_parallel A B C D ⟷ 
    (fst B - fst A) * (snd D - snd C) = (snd B - snd A) * (fst D - fst C)"
definition perp_bisector :: "point ⇒ point ⇒ point ⇒ bool" where
  "perp_bisector P A B ⟷ dist P A = dist P B"
definition is_center :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_center O A B C ⟷ (∃r > 0. on_circle O A r ∧ on_circle O B r ∧ on_circle O C r)"
theorem triangle_perp_bisector_equidistant:
  fixes A B C O D E F G M N :: point
  assumes 
    "is_center O A B C"
    "is_midpoint F B C"
    "perp_bisector D B C ∧ perp_bisector E B C"
    "D ≠ E ∧ D ≠ F ∧ E ≠ F"
    "on_line F B C"
    "on_circle O D r ∧ on_circle O E r" for r
    "are_parallel F G A D"
    "G ≠ E"
    "on_line G M N"
    "on_line M A B"
    "on_line N A C"
    "perpendicular M N E G"
  shows "dist G M = dist G N"
sorry