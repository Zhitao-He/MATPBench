theory Parallelogram_Problem
imports "HOL-Analysis.Angle" 
begin
type_synonym point = "real^2"
fixes W :: point
fixes X :: point
fixes Y :: point
fixes Z :: point
abbreviation length_of_line :: "point ⇒ point ⇒ real" where
  "length_of_line A B ≡ dist A B"
definition degrees_to_radians :: "real ⇒ real" where
  "degrees_to_radians d ≡ d * pi / 180"
definition is_parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_parallelogram p1 p2 p3 p4 ≡
    (p1 ≠ p2 ∧ p2 ≠ p3 ∧ p3 ≠ p4 ∧ p4 ≠ p1 ∧ p1 ≠ p3 ∧ p2 ≠ p4) ∧ 
    ((p2 - p1) = (p3 - p4)) ∧ 
    (¬ collinear p1 p2 p3)"   
axiomatization where
  YX_length: "length_of_line Y X = 24" and
  ZY_length: "length_of_line Z Y = 28" and
  WZYX_is_parallelogram: "is_parallelogram W Z Y X" and
  angle_XWZ_value: "angle X W Z = degrees_to_radians 105"
end