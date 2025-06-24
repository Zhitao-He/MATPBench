theory Right_Triangle_Problem
  imports
    "HOL-Analysis.Cartesian_Euclidean_Space" 
    "HOL-Analysis.Trigonometry"               
begin
type_synonym point = "real^2"
locale right_triangle_XYZ_context =
  fixes X Y Z :: point 
  assumes
    distinct_points: "X \<noteq> Y \<and> Y \<noteq> Z \<and> X \<noteq> Z" and
    right_angle_at_Y: "(X - Y) \<cdot> (Z - Y) = 0" and
    length_XY: "dist X Y = 8" and
    length_XZ: "dist X Z = 10"
begin
  definition angle_X :: real where
    "angle_X = angle Y X Z"
  definition sin_of_angle_X :: real where
    "sin_of_angle_X = sin angle_X"
  lemma sin_X_is_3_over_5:
    "sin_of_angle_X = (3/5 :: real)"
end 
end