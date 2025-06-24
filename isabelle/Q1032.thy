theory Geometry_Problem_Formalization
imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition cos_vec_angle :: "point => point => real" where
  "cos_vec_angle v1 v2 = (v1 ⋅ v2) / (norm v1 * norm v2)"
definition cos_angle_between_lines_at_P :: "point => point => point => real" where
  "cos_angle_between_lines_at_P P X Y = abs (cos_vec_angle (X - P) (Y - P))"
definition is_strictly_between :: "point => point => point => bool" where
  "is_strictly_between P X Y == P ≠ X ∧ P ≠ Y ∧ dist X P + dist P Y = dist X Y"
lemma three_chords_intersecting_at_P:
  fixes O P A B C D E F :: point
  fixes r :: real 
  assumes
    r_is_positive: "r > 0" and
    A_on_circle: "dist A O = r" and
    B_on_circle: "dist B O = r" and
    C_on_circle: "dist C O = r" and
    D_on_circle: "dist D O = r" and
    E_on_circle: "dist E O = r" and
    F_on_circle: "dist F O = r" and
    all_endpoints_distinct: "distinct [A,B,C,D,E,F]" and
    P_on_chord_AB: "is_strictly_between P A B" and
    P_on_chord_CD: "is_strictly_between P C D" and
    P_on_chord_EF: "is_strictly_between P E F" and
    angle_AB_CD_is_60_deg: "cos_angle_between_lines_at_P P A C = 1/2" and
    angle_CD_EF_is_60_deg: "cos_angle_between_lines_at_P P C E = 1/2" and
    angle_EF_AB_is_60_deg: "cos_angle_between_lines_at_P P E A = 1/2"
  shows "dist A P + dist E P + dist D P = dist C P + dist B P + dist F P"
  sorry 
end