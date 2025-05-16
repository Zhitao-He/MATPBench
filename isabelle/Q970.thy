theory TriangleAHDIsosceles
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - fst p)"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst q - fst p)² + (snd q - snd p)²)"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle center p = (distance center p = distance center (2::point))"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r = (∃t. vec p q = t *⇩R vec p r ∨ vec p r = t *⇩R vec p q)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p q r s = 
    ((fst (vec p q)) * (fst (vec r s)) + (snd (vec p q)) * (snd (vec r s)) = 0)"
definition foot_point :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "foot_point F A B C = (collinear B C F ∧ perpendicular B C A F)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = undefined" 
definition is_isosceles_triangle :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_isosceles_triangle A B C = (distance A B = distance A C)"
definition midpoint_arc :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "midpoint_arc O D B C A = undefined" 
locale triangle_ahd_isosceles =
  fixes A B C O E F H D :: point
  assumes H_circum: "on_circle O A ∧ on_circle O B ∧ on_circle O C"
    and H_angle: "angle B A C = pi/3" 
    and H_E_on: "foot_point E A B C"
    and H_F_on: "foot_point F C A B"
    and H_orth1: "perpendicular A E B C"
    and H_orth2: "perpendicular C F A B"
    and H_H_int: "collinear H A E ∧ collinear H C F"
    and H_D_arc: "on_circle O D ∧ midpoint_arc O D B C A"
theorem triangle_AHD_isosceles:
  assumes "triangle_ahd_isosceles A B C O E F H D"
  shows "is_isosceles_triangle A H D"
  sorry