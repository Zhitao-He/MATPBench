theory Smallest_Equilateral_Triangle
  imports Complex_Main
begin
type_synonym point = "real × real"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 1/2 * abs ((fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A))"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (2 * sqrt 3, 0)"
definition C :: point where "C = (0, 5)"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B P ≡ 
    (∃t::real. 0 < t ∧ t < 1 ∧ P = (fst A + t * (fst B - fst A), snd A + t * (snd B - snd A)))"
definition is_equilateral :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_equilateral P Q R ≡ 
    dist P Q = dist Q R ∧ dist Q R = dist R P"
definition possible_areas :: "real set" where
  "possible_areas = 
    {triangle_area P Q R | P Q R.
      on_segment A B P ∧ on_segment B C Q ∧ on_segment C A R ∧ is_equilateral P Q R}"
definition min_area :: "real" where
  "min_area = Inf possible_areas"
end