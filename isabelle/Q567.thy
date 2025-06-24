theory Circle_Angle_Problem
  imports Main
begin
typedecl Point
type_synonym Angle = real
record Circle =
  center :: Point
  radius :: real
definition concyclic :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "concyclic A B C D ⟷ (∃O r. O ≠ A ∧ O ≠ B ∧ O ≠ C ∧ O ≠ D ∧
    dist O A = r ∧ dist O B = r ∧ dist O C = r ∧ dist O D = r)"
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ Angle"
locale circle_angle_problem =
  fixes A B C D :: Point
  assumes on_circle: "∃r. r > 0 ∧ dist D A = r ∧ dist D B = r ∧ dist D C = r"
    and angle_DBC: "angle D B C = 170"
begin
definition result :: "bool" where
  "result ⟷ (angle C A B = 85)"
end
end