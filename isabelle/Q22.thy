theory TangentCircleAngle
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle center p r ⟷ dist center p = r"
definition on_circle_O :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_circle_O O p₁ p₂ ⟷ dist O p₁ = dist O p₂"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = (let 
    vec1 = (fst A - fst B, snd A - snd B);
    vec2 = (fst C - fst B, snd C - snd B);
    dot_product = fst vec1 * fst vec2 + snd vec1 * snd vec2;
    len1 = sqrt((fst vec1)² + (snd vec1)²);
    len2 = sqrt((fst vec2)² + (snd vec2)²)
    in arccos(dot_product / (len1 * len2)) * (180 / pi))"
definition tangent_at_point :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "tangent_at_point O C D r ⟷ 
    on_circle O C r ∧ 
    let OC = (fst C - fst O, snd C - snd O);
        CD = (fst D - fst C, snd D - snd C)
    in fst OC * fst CD + snd OC * snd CD = 0"
definition tangent_at_point_simple :: "point ⇒ point ⇒ point ⇒ bool" where
  "tangent_at_point_simple O C D ⟷ 
    let OC = (fst C - fst O, snd C - snd O);
        CD = (fst D - fst C, snd D - fst C)
    in fst OC * fst CD + snd OC * snd CD = 0"
theorem tangent_circle_angle:
  fixes A B C D O :: point
  assumes "on_circle_O O C A" 
      and "on_circle_O O C B"
      and "tangent_at_point_simple O C D"
      and "angle D C B = 40"
      and "A ≠ B" and "C ≠ B" and "C ≠ A"
  shows "angle C A B = 40"
  sorry