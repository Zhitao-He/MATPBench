theory InscribedSquares
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
fun vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
fun cross :: "real × real ⇒ real × real ⇒ real" where
  "cross v w = fst v * snd w - snd v * fst w"
fun dot :: "real × real ⇒ real × real ⇒ real" where
  "dot v w = fst v * fst w + snd v * snd w"
fun norm_sq :: "real × real ⇒ real" where
  "norm_sq v = dot v v"
fun norm :: "real × real ⇒ real" where
  "norm v = sqrt (norm_sq v)"
fun triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area a b c = abs (cross (vec a b) (vec a c)) / 2"
definition is_isosceles_right_triangle :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_isosceles_right_triangle a b c ≡ 
    (norm (vec a b) = norm (vec a c)) ∧  
    (dot (vec a b) (vec a c) = 0)"       
definition are_congruent_triangles :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "are_congruent_triangles a b c d e f ≡
    norm (vec a b) = norm (vec d e) ∧
    norm (vec b c) = norm (vec e f) ∧
    norm (vec c a) = norm (vec f d)"
definition inscribed_square_area :: "point ⇒ point ⇒ point ⇒ real" where
  "inscribed_square_area a b c = 
    (if is_isosceles_right_triangle a b c then
      let h = norm (vec a b) in  
      (h^2) / 3  
    else 0)"  
lemma inscribed_squares_problem:
  assumes "is_isosceles_right_triangle A B C"
    and "is_isosceles_right_triangle D E F"
    and "are_congruent_triangles A B C D E F"
    and "inscribed_square_area A B C = 15"
  shows "inscribed_square_area D E F = 40/3"