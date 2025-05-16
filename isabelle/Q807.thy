theory MeasureOfAngleDCB
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition angle :: "point → point → point → real" where
  "angle A B C = undefined" 
definition collinear :: "point → point → point → bool" where
  "collinear A B C = undefined" 
locale kite_problem =
  fixes A B C D :: point
  assumes distinct: "A ≠ B ∧ B ≠ C ∧ C ≠ D ∧ D ≠ A ∧ A ≠ C ∧ B ≠ D"
  assumes quadrilateral: "¬collinear A B C ∧ ¬collinear B C D ∧ 
                           ¬collinear C D A ∧ ¬collinear D A B"
  assumes is_kite: "norm (A - D) = norm (C - D) ∧ norm (A - B) = norm (C - B)"
  assumes angle_BAD: "angle B A D = 74"
  assumes angle_ADC: "angle A D C = 105"
theorem angle_DCB:
  shows "angle D C B = 76"
  oops