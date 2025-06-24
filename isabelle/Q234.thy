theory Account_Balance
  imports Complex_Main
begin
definition g :: "real ⇒ real" where
  "g t = 750 * exp (0.12 * t)"
definition f :: "real ⇒ real" where
  "f t = 1000 * exp (0.08 * t)"
definition t_equal :: real where
  "t_equal = (ln (1000 / 750)) / (0.12 - 0.08)"
end