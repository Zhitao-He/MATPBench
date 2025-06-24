theory Dashed_Curve_Equation
  imports "HOL-Library.Real"
begin
definition g :: "real ⇒ real"
  where "g x = -(x * x)"
definition P :: "real × real"
  where "P = (2, -4)"
end