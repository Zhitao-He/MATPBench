theory MeasureOfAngle_BEA_Theorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition angle :: "point → point → point → real" where
  "angle A B C = undefined"  
definition colinear :: "point → point → point → bool" where
  "colinear A B C = undefined"  
axiomatization A B C D E :: point
axiomatization where
  BE_col: "colinear B E D" and
  AE_col: "colinear A E C"
axiomatization where
  DB_eq: "angle D B E = 75" and
  BDC_eq: "angle B D E = 35" and
  CAE_eq: "angle C A E = 28"
theorem measure_of_angle_BEA: "angle B E A = 110"
  sorry