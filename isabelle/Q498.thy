theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst B - fst A)^2 + (snd B - snd A)^2)"
definition dot :: "real × real ⇒ real × real ⇒ real" where
  "dot v w = fst v * fst w + snd v * snd w"
definition perp :: "real × real ⇒ real × real ⇒ bool" where
  "perp v w ⟷ dot v w = 0"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let v1 = vec B A; v2 = vec B C in
     acos (dot v1 v2 / (sqrt(dot v1 v1) * sqrt(dot v2 v2))))"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B C ⟷ 
    (∃t. t ≥ 0 ∧ t ≤ 1 ∧ 
         fst C = fst A + t * (fst B - fst A) ∧ 
         snd C = snd A + t * (snd B - snd A))"
theorem value_of_x_in_geometry_diagram:
  fixes A B C D :: point
  assumes 
    "A ≠ B" "B ≠ C" "C ≠ A"
    "perp (vec A B) (vec A C)"           
    "angle B C A = pi / 3"               
    "angle C A B = pi / 6"               
    "dist B C = 9"                       
    "perp (vec A D) (vec B C)"           
    "dist A D = 3 * sqrt 3"              
begin
  