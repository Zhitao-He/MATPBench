theory TriangleOBCArea
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition is_circumcenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_circumcenter O A B C = (dist O A = dist O B ∧ dist O B = dist O C)"
definition area :: "point ⇒ point ⇒ point ⇒ real" where
  "area P Q R = abs((fst Q - fst P) * (snd R - snd P) - (fst R - fst P) * (snd Q - snd P)) / 2"
theorem triangle_OBC_area:
  fixes A B C O :: point
  assumes "dist A B = 5"
      and "dist A C = 5"
      and "dist B C = 6"
      and "is_circumcenter O A B C"
    shows "area O B C = 21/8"
begin
  