theory TetrahedronMidpointDistance
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
theorem tetrahedron_midpoint_distance:
  "∃(A B C D :: real^3).
      norm (A - B) = 41 ∧
      norm (A - C) = 7 ∧
      norm (A - D) = 18 ∧
      norm (B - C) = 36 ∧
      norm (B - D) = 27 ∧
      norm (C - D) = 13 ∧
      (let M1 = (A + B) / 2;
           M2 = (C + D) / 2
       in (norm (M1 - M2))^2 = 137)"
  