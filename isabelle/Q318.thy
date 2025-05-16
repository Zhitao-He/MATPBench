theory IsoscelesTriangleAngles
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹In isosceles triangle ABC, angle BAC and angle BCA measure 35 degrees.
      The measure of angle CDA is 70 degrees.›
(* Define a type for points in the plane *)
type_synonym point = "real × real"
(* Define vectors between points *)
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
(* The dot product of two vectors *)
definition dot :: "real × real ⇒ real × real ⇒ real" where
  "dot v w = fst v * fst w + snd v * snd w"
(* Norm (length) of a vector *)
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt (dot v v)"
(* Angle between two vectors in degrees *)
definition angle_deg :: "real × real ⇒ real × real ⇒ real" where
  "angle_deg v w = 
    if v = (0, 0) ∨ w = (0, 0) then 0
    else let cos_angle = dot v w / (norm v * norm w) in
         if cos_angle > 1 then 0
         else if cos_angle < -1 then 180
         else acos cos_angle * 180 / pi"
(* Angle between three points in degrees *)
definition angle_pts_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_pts_deg A B C = angle_deg (vec B A) (vec B C)"
(* Triangle is isosceles if two sides have equal length *)
definition is_isosceles_triangle :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_isosceles_triangle A B C = (norm (vec A B) = norm (vec A C))"
(* Main theorem statement *)
theorem angle_CDA_70:
  fixes A B C D :: point
  assumes isosceles: "is_isosceles_triangle A B C"
    and angle_BAC: "angle_pts_deg B A C = 35"
    and angle_BCA: "angle_pts_deg B C A = 35"
  shows "angle_pts_deg C D A = 70"
  oops 