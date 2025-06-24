theory Geometry_Problem_Find_X
  imports Main
begin
typedecl point
consts
  angle :: "point ⇒ point ⇒ point ⇒ real"
  parallel_lines :: "point ⇒ point ⇒ point ⇒ point ⇒ bool"
consts
  C :: point
  D :: point
  E :: point
  F :: point
consts
  x :: real
  y :: real
axiomatization where
  angle_CFD_value: "angle C F D = x + 36.0" and
  angle_DEC_value: "angle D E C = 2.0 * y" and
  angle_ECF_value: "angle E C F = 78.0" and
  angle_FDE_value: "angle F D E = 110.0" and
  CE_parallel_FD: "parallel_lines C E F D" and
  ipsilateral_angles_supplementary_CF:
    "parallel_lines C E F D ⟹ angle E C F + angle C F D = 180.0" and
  ipsilateral_angles_supplementary_ED:
    "parallel_lines C E F D ⟹ angle D E C + angle F D E = 180.0"
end