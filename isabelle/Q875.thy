theory CircleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes O W Y Z :: "real^2"  
  assumes circle_O: "dist O Y = dist O W" "dist O Y = dist O Z"  
  assumes YW_length: "dist Y W = 18"
  assumes YZ_length: "dist Y Z = 18"
  assumes angle_WOY: "angle_between (W - O) (Y - O) = pi * 143 / 180"  
  assumes angle_ZOY: "∃x. angle_between (Z - O) (Y - O) = pi * (2 * x - 1) / 180"  
context geometry_problem
begin
lemma equal_chords_equal_angles:
  assumes "dist Y W = dist Y Z"
  shows "angle_between (W - O) (Y - O) = angle_between (Z - O) (Y - O)"
sorry
theorem value_of_x:
  "∀x. angle_between (Z - O) (Y - O) = pi * (2 * x - 1) / 180 ⟶ x = 72"
proof -
  from angle_WOY and angle_ZOY have 
    "∃x. angle_between (Z - O) (Y - O) = pi * (2 * x - 1) / 180 ∧ 
         angle_between (W - O) (Y - O) = pi * 143 / 180" by auto
  then obtain x where x_def: "angle_between (Z - O) (Y - O) = pi * (2 * x - 1) / 180 ∧ 
                              angle_between (W - O) (Y - O) = pi * 143 / 180" by auto
  hence "pi * (2 * x - 1) / 180 = pi * 143 / 180" using YW_length YZ_length equal_chords_equal_angles by simp
  hence "2 * x - 1 = 143" by simp
  hence "2 * x = 144" by simp
  hence "x = 72" by simp
  thus "∀x. angle_between (Z - O) (Y - O) = pi * (2 * x - 1) / 180 ⟶ x = 72" by auto
qed