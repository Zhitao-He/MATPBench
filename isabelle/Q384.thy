theory Triangle_Square_3D
  imports Complex_Main
begin
type_synonym point = "real × real × real"
definition dist3 :: "point ⇒ point ⇒ real" where
  "dist3 A B = sqrt ((fst A - fst B)^2 + (fst (snd A) - fst (snd B))^2 + (snd (snd A) - snd (snd B))^2)"
definition A :: point where "A = (0, 0, 0)"
definition B :: point where "B = (5, 0, 0)"
definition D :: point where "D = (0, 5, 0)"
definition P :: point where "P = (x, 0, -h)"
definition x_val :: real where "x_val = 9/5"
definition h_val :: real where "h_val = 12/5"
definition P_val :: point where "P_val = (x_val, 0, -h_val)"
definition PD :: real where "PD = dist3 P_val D"
end