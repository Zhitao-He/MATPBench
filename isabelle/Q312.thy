theory Geometry_Problem_Formalization
imports "HOL-Analysis.Real" 
begin
locale right_triangle_ABC =
  fixes len_AB :: real 
  fixes len_AC :: real 
  fixes len_BC :: real 
  assumes sides_positive: "len_AB > 0 \<and> len_AC > 0 \<and> len_BC > 0"
  assumes pythagorean_theorem: "len_AB^2 + len_AC^2 = len_BC^2"
begin
  definition cos_B :: real where
    "cos_B = len_AB / len_BC" 
  definition tan_C :: real where
    "tan_C = len_AB / len_AC" 
end
theorem prove_tan_C_value:
  context right_triangle_ABC 
  assumes
    bc_length_is_10: "len_BC = (10 :: real)" and
    cos_B_is_6_over_10: "cos_B = (6/10 :: real)" 
  shows
    "tan_C = (3/4 :: real)" 
end