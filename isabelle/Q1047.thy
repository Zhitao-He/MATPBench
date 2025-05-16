theory Inscribed_Quadrilateral_Theorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt(((fst p - fst q)^2) + ((snd p - snd q)^2))"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p center r = (distance p center = r)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = undefined" 
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = undefined" 
definition is_angle_bisector :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_angle_bisector E B C F = (angle B E F = angle F E C)"
theorem inscribed_quadrilateral_equal_chords:
  fixes A B C D E F G O :: point
  assumes 
    "on_circle A O (distance A O)" 
    "on_circle B O (distance A O)" 
    "on_circle C O (distance A O)" 
    "on_circle D O (distance A O)" 
    "on_circle F O (distance A O)" 
    "on_circle G O (distance A O)" 
    "angle E A B = angle E C D" 
    "angle E B A = angle E D C"
    "collinear F E G"
    "is_angle_bisector E B C F" 
  shows "distance E F = distance E G"
  sorry