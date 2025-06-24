theory Photographer_Path
  imports Complex_Main
begin
type_synonym point = "real × real"
definition B :: point where "B = (0, 0)"
definition P :: point where "P = (916, 0)"
definition theta :: real where "theta = 145 * pi / 180"
definition cos_theta :: real where "cos_theta = cos theta"
variable s :: real
definition S :: "real ⇒ point" where
  "S s = (s * cos theta, s * sin theta)"
definition SP_length :: "real ⇒ real" where
  "SP_length s = sqrt ((916 - s * cos theta)^2 + (0 - s * sin theta)^2)"
definition total_distance :: "real ⇒ real" where
  "total_distance s = s + SP_length s + sqrt ((s * cos theta)^2 + (s * sin theta)^2)"
end