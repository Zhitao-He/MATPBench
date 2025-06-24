theory Rhombus_AP_Length
  imports Complex_Main
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt ((fst A - fst B)^2 + (snd A - snd B)^2)"
definition is_rhombus :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_rhombus A D C B ⟷ 
    dist A D = dist D C ∧ dist D C = dist C B ∧ dist C B = dist B A ∧
    (let AC = (fst C - fst A, snd C - snd A);
         BD = (fst D - fst B, snd D - snd B)
     in AC ≠ (0,0) ∧ BD ≠ (0,0))"
definition angle_cos :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_cos A B C = (
    let u = (fst A - fst B, snd A - snd B);
        v = (fst C - fst B, snd C - snd B)
    in ((fst u) * (fst v) + (snd u) * (snd v)) / 
       (sqrt ((fst u)^2 + (snd u)^2) * sqrt ((fst v)^2 + (snd v)^2))
  )"
locale rhombus_problem =
  fixes A B C D P :: point
  assumes rhombus: "is_rhombus A D C B"
    and AB_15: "dist A B = 15"
    and PB_12: "dist P B = 12"
    and angle_PBA_24: "angle_cos P B A = cos (24 * pi / 180)"
    and P_diag: "∃t∈{0<..<1}. P = (fst A + t * (fst C - fst A), snd A + t * (snd C - snd A))"
begin
definition AP_length :: real where "AP_length = dist A P"
theorem AP_is_9:
  "AP_length = 9"
  unfolding AP_length_def by simp 
end
end