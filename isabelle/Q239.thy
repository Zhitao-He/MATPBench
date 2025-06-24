theory Rectangle_Area_Parabola
  imports Complex_Main
begin
definition parabola :: "real ⇒ real" where
  "parabola x = 36 - x^2"
definition rectangle_area :: "real ⇒ real" where
  "rectangle_area x = 72 * x - 2 * x^3"
end