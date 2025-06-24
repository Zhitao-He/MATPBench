theory Circle_Angle_EDC
  imports Main
begin
locale geometry_setup =
  fixes A B C D E H :: "'point"
  assumes
    on_circle_A: "on_circle H A"
    and on_circle_B: "on_circle H B"
    and on_circle_C: "on_circle H C"
    and on_circle_D: "on_circle H D"
    and E_def: "collinear A E C ∧ collinear B E D"
    and angle_ABE: "angle A B E = 32"
begin
definition goal :: "bool" where
  "goal ≡ angle E D C = 32"
end
end