theory GeometryProblem_Formalization
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment P A B ⇔ P ∈ segment A B"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⇔ collinear A B P"
definition vec_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "vec_angle P Q R = (if P=Q ∨ R=Q then 0
                      else arccos (((P-Q) inner (R-Q)) / (norm(P-Q) * norm(R-Q))))"
definition perpendicular_lines :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular_lines P1 P2 Q1 Q2 ⇔ ((P2 - P1) inner (Q2 - Q1) = 0)"
theorem geometric_problem_statement:
  fixes A B C D E F G M N :: point
  assumes
    A_B_C_distinct: "A ≠ B ∧ B ≠ C ∧ A ≠ C" and
    A_B_C_not_collinear: "¬ collinear A B C" and
    D_properties: "on_segment D B C ∧ D ≠ B ∧ D ≠ C ∧ vec_angle B A D = vec_angle D A C" and
    E_properties: "on_segment E A B ∧ E ≠ A ∧ E ≠ B ∧ vec_angle A D E = vec_angle E D B" and
    F_properties: "on_segment F A C ∧ F ≠ A ∧ F ≠ C ∧ vec_angle A D F = vec_angle F D C" and
    G_intersection: "on_line G E F ∧ on_line G A D" and
    M_intersection: "on_line M B G ∧ on_line M D F" and
    N_intersection: "on_line N C G ∧ on_line N D E"
  shows "collinear A M N ∧ perpendicular_lines M N A D"
oops
end