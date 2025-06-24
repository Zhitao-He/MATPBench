theory Flag_Rectangle
  imports Main
begin
definition lambda :: real where
  "lambda = 120 / 360"
lemma lambda_value: "lambda = 1 / 3"
  unfolding lambda_def by simp
definition flag_width :: real where
  "flag_width = 3 * lambda"
definition flag_height :: real where
  "flag_height = 3"
end