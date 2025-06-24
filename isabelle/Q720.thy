theory Triangle_AB_x
  imports Complex_Main
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt ((fst A - fst B)^2 + (snd A - snd B)^2)"
locale triangle_setup =
  fixes A B C :: point
  assumes AC_len: "dist A C = 6"
    and BC_len: "dist B C = 15"
    and right_angle: "(fst B - fst C) * (fst A - fst C) + (snd B - snd C) * (snd A - snd C) = 0"
begin
definition x where "x = dist A B"
end
definition value_x :: "real ⇒ bool" where
  "value_x x ⟷ x = 3 * sqrt 29"
end