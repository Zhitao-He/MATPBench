theory TriangleIncircle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_incircle =
  fixes A B C :: "real^2"
  assumes triangle_sides: "dist A B = 13" "dist A C = 15" "dist B C = 14"
  assumes nondeg: "~collinear {A, B, C}"
context triangle_incircle
begin
definition s :: real where "s = (dist A B + dist A C + dist B C) / 2"
definition area_ABC :: real where 
  "area_ABC = sqrt (s * (s - dist A B) * (s - dist A C) * (s - dist B C))"
definition I :: "real^2" where
  "I = (dist B C *\<^sub>R A + dist A C *\<^sub>R B + dist A B *\<^sub>R C) /\<^sub>R (dist A B + dist B C + dist A C)"
definition inradius :: real where
  "inradius = area_ABC / s"
definition D :: "real^2" where
  "D = B + ((dist B C) * inradius / area_ABC) *\<^sub>R (C - B) / 2"
definition E :: "real^2" where
  "E = A + ((dist A C) * inradius / area_ABC) *\<^sub>R (C - A) / 2"
definition F :: "real^2" where
  "F = A + ((dist A B) * inradius / area_ABC) *\<^sub>R (B - A) / 2"
definition area_AEIF :: real where
  "area_AEIF = (1/2) * (norm (det_of_2DVec (E - A) (I - A)) + 
                        norm (det_of_2DVec (I - E) (F - E)) + 
                        norm (det_of_2DVec (F - I) (A - I)))"
theorem area_AEIF_is_28: "area_AEIF = 28"
  sorry