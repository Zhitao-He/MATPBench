theory AngleMeasure
  imports Main HOL.Real
begin
typedecl Point
consts angle_measure :: "Point ⇒ Point ⇒ Point ⇒ real"
axiomatization where
  distinct_points: "A ≠ B ∧ A ≠ C ∧ A ≠ E ∧ B ≠ C ∧ B ≠ E ∧ C ≠ E"
axiomatization where
  angle_positive: "angle_measure B A C ≥ 0" and
  angle_symmetric: "angle_measure B A C = angle_measure C A B" and
  flat_angle: "angle_measure B A E = 180" and
  angle_addition: "angle_measure B A C + angle_measure C A E = angle_measure B A E"
axiomatization where
  angle_BAC: "angle_measure B A C = 124"
theorem angle_CAE: "angle_measure C A E = 56"
proof -
  have "angle_measure B A C + angle_measure C A E = angle_measure B A E" 
    by (rule angle_addition)
  moreover have "angle_measure B A E = 180" by (rule flat_angle)
  moreover have "angle_measure B A C = 124" by (rule angle_BAC)
  ultimately show "angle_measure C A E = 56" by simp
qed