theory ThreeIsoscelesTriangles
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D ⟷ 
   (fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0"
definition segment_eq :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "segment_eq A B C D ⟷ dist A B = dist C D"
theorem three_isosceles_triangles:
  fixes A B C D O P :: point
  assumes 
    "dist D A = 10" "dist A O = 10" "dist O B = 10" "dist B C = 10"
    "dist A B = 12" "dist D O = 12" "dist O C = 12"
    "P ∈ {P. ∃t. P = A + t *⇩R (B - A) ∧ 0 ≤ t ∧ t ≤ 1}" (* P is on segment AB *)
    "perpendicular O P A B" (* OP ⊥ AB *)
  shows "dist O P = 8"