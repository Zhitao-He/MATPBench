theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition vec :: "point ⇒ point ⇒ real^2" where
  "vec p q = q - p"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ⟷ (∃t. vec p q = t *R vec p r) ∨ (∃t. vec p r = t *R vec p q)"
definition perpendicular :: "real^2 ⇒ real^2 ⇒ bool" where
  "perpendicular v w ⟷ v ∙ w = 0"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let v1 = vec B A; 
         v2 = vec B C;
         cos_angle = (v1 ∙ v2) / (norm v1 * norm v2)
     in if cos_angle > 1 then 0
        else if cos_angle < -1 then pi
        else arccos cos_angle)"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A B C = (angle A B C) * 180 / pi"
lemma angle_formula:
  fixes A B C D E F :: point
  assumes "angle_deg A F C = 70"
  and "angle_deg E B F = 35"
  and "perpendicular (vec A D) (vec E D)"
  and "perpendicular (vec E B) (vec C B)"
  and "collinear D E B"
  and "collinear A F E"
  and "collinear C F B"
  shows "angle_deg F E B = 75"
  sorry