theory QuadrilateralAngles
imports 
  Complex_Main
  "HOL-Algebra.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt(dot_product v v)"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad P Q R = 
    (if vec Q P = (0, 0) ∨ vec Q R = (0, 0) 
     then 0 
     else arccos(dot_product (vec Q P) (vec Q R) / (norm (vec Q P) * norm (vec Q R))))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg P Q R = rad_to_deg (angle_rad P Q R)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = (dot_product (vec A B) (vec C D) = 0)"
fix A B C D :: point
fix x :: real
assume distinct_points: "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A"
assume perp1: "perpendicular A B C B" 
assume angle_BCD: "angle_deg B C D = x + 10"
assume angle_CDA: "angle_deg C D A = x"
theorem value_of_x_is_85: "x = 85"
  sorry