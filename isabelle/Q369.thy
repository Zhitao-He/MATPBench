theory MidpointQuadrilateral
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral =
  fixes A B C :: "real × real"
  assumes distinct_points: "A ≠ B" "B ≠ C" "C ≠ A"
context quadrilateral
begin
definition midpoint :: "real × real ⇒ real × real ⇒ real × real" where
  "midpoint P Q = ((fst P + fst Q)/2, (snd P + snd Q)/2)"
definition D :: "real × real" where
  "D = midpoint A B"
definition E :: "real × real" where
  "E = midpoint B C"
definition F :: "real × real" where
  "F = midpoint C A"  
definition det :: "real × real ⇒ real × real ⇒ real" where
  "det P Q = fst P * snd Q - snd P * fst Q"
definition quad_area :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "quad_area P Q R S = abs ((det P Q + det Q R + det R S + det S P) / 2)"
definition points_setup :: bool where
  "points_setup = (
    A = (0, 6) ∧
    B = (0, 0) ∧ 
    C = (8, 0)
  )"
theorem quadrilateral_DBEF_area:
  assumes "points_setup"
  shows "quad_area D B E F = 8"
  sorry