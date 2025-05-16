theory CubeAngle
imports Complex_Main Real_Vector_Spaces
begin
definition A :: "real^3" where "A = (χ i. if i = 3 then 7 else 0)"
definition G :: "real^3" where "G = (χ i. if i = 1 then 7 else 0)" 
definition H :: "real^3" where "H = (χ i. 0)"
definition angle_AGH :: real where
  "angle_AGH = arccos (
    inner_product (G - A) (H - G) / 
    (norm (G - A) * norm (H - G))
  )"
theorem angle_AGH_value:
  "abs (angle_AGH * 180 / pi - 54.74) < 0.01"
  sorry