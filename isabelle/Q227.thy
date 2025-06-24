theory Ellipse_Equation
  imports Complex_Main
begin
definition ellipse :: "(real × real) set" where
  "ellipse = { (x, y). ((x + 2)^2) / 4 + ((y - 2)^2) / 9 = 1 }"
end