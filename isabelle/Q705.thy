theory Geometry_DE_Length
  imports Complex_Main
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt ((fst A - fst B)^2 + (snd A - snd B)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D ⟷ 
    ((fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0)"
definition A :: point where "A = (0, 0)"
definition D :: point where "D = (12, 0)"
definition B :: point where "B = (16, 0)"
fixes h :: real
assumes h_pos: "h > 0"
definition C :: point where "C = (12, h)"
fixes y :: real
definition E :: point where "E = (16, y)"
lemma AD_perp_CD: "perpendicular A D C D"
  unfolding perpendicular_def A_def D_def C_def
  by simp
lemma DE_perp_CE: "perpendicular D E C E"
  unfolding perpendicular_def D_def E_def C_def
  by simp
lemma EC_perp_AC: "perpendicular E C A C"
  unfolding perpendicular_def E_def C_def A_def
  by simp
theorem DE_value:
  assumes "A = (0, 0)" "D = (12, 0)" "B = (16, 0)"
    "C = (12, h)" "h > 0"
    "E = (16, y)"
    "perpendicular A D C D"
    "perpendicular D E C E"
    "perpendicular E C A C"
  shows "dist D E = 2 * sqrt 3"
proof -
  show ?thesis sorry
qed
end