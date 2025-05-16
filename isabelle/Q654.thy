theory CyclicQuadrilateralXYZW
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition angle :: "point → point → point → real" where
  "angle A B C = (
    let 
      vec1 = (A - B) and
      vec2 = (C - B)
    in
    atan2 (vec1 ∙ (vec2 ⊥)) (vec1 ∙ vec2)
  )"
definition angle_deg :: "point → point → point → real" where
  "angle_deg A B C = angle A B C * 180 / pi"
definition on_circle :: "point → point → real → bool" where
  "on_circle P C r = (norm (P - C) = r)"
lemma cyclic_quadrilateral_angle:
  fixes V X Y Z W :: point
  assumes 
    "∃r>0. on_circle X V r ∧ on_circle Y V r ∧ on_circle Z V r ∧ on_circle W V r"
    "X ≠ Y" "Y ≠ Z" "Z ≠ W" "W ≠ X"
    "angle_deg W Z Y = 60"
    "angle_deg X W Z = 95"
  shows "angle_deg X Y Z = 85"
  sorry