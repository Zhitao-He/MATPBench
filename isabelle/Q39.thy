theory Circle_Geometry_ADB
  imports Complex_Main
begin
locale circle_geometry =
  fixes O A B C D E :: "'a::euclidean_space"
  assumes
    diameter: "dist O A = dist O B" "A ≠ B" "O = ((A + B) / 2)"
    and C_on_circle: "dist O C = dist O A"
    and AE_tangent: "E ≠ A" "A ≠ O" "orthogonal (E - A) (A - O)"
    and D_on_BC_AE: "collinear B C D" "collinear A E D" "D ≠ A" "D ≠ E"
    and angle_AOC: "angle A O C = (80 / 180) * pi"
begin
definition angle_ADB :: real where
  "angle_ADB = angle A D B"
lemma angle_ADB_50_deg:
  "angle_ADB = (50 / 180) * pi"
  sorry
end
end