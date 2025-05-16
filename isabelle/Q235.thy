theory Function_G
  imports Main "HOL-Analysis.Real_Vector_Spaces"
begin

definition g :: "real ⇒ real" where
  "g x = (x + 4)^2 - 5"

theorem g_function_form:
  "∀x. g x = (x + 4)^2 - 5"
  by (simp add: g_def)

end