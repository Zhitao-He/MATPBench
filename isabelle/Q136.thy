theory MovingMidpointTrapezoid
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec_add :: "point ⇒ point ⇒ point" where
  "vec_add p q = (fst p + fst q, snd p + snd q)"
definition vec_sub :: "point ⇒ point ⇒ point" where
  "vec_sub p q = (fst p - fst q, snd p - snd q)"
definition scalar_mult :: "real ⇒ point ⇒ point" where
  "scalar_mult c p = (c * fst p, c * snd p)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = scalar_mult (1/2) (vec_add p q)"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition triangle_perimeter :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_perimeter p a b = distance p a + distance p b + distance a b"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area p a b = abs(((fst a - fst p) * (snd b - snd p) - 
                             (fst b - fst p) * (snd a - snd p)) / 2)"
definition trapezoid_area :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "trapezoid_area a b n m = abs(((fst a - fst m) * (snd b - snd m) - 
                               (fst b - fst m) * (snd a - snd m)) / 2) +
                           abs(((fst b - fst n) * (snd a - snd n) - 
                               (fst a - fst n) * (snd b - snd n)) / 2)"
definition P :: "real ⇒ point ⇒ point ⇒ point ⇒ point" where
  "P t q d = vec_add q (scalar_mult t d)"
definition M :: "real ⇒ point ⇒ point ⇒ point ⇒ point" where
  "M t a q d = midpoint (P t q d) a"
definition N :: "real ⇒ point ⇒ point ⇒ point ⇒ point" where
  "N t b q d = midpoint (P t q d) b"
definition MN_length :: "real ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "MN_length t a b q d = distance (M t a q d) (N t b q d)"
definition PAB_perimeter :: "real ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "PAB_perimeter t a b q d = triangle_perimeter (P t q d) a b"
definition PAB_area :: "real ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "PAB_area t a b q d = triangle_area (P t q d) a b"
definition ABNM_area :: "real ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "ABNM_area t a b q d = trapezoid_area a b (N t b q d) (M t a q d)"