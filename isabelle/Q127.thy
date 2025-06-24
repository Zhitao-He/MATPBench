theory GeometryProblemFormalization
imports
  "HOL-Analysis.Analysis_Main" 
  "HOL-Analysis.Transcendental" 
begin
type_synonym point = "real × real"
definition vec_of_points :: "point => point => point" where
  "vec_of_points A B = (fst B - fst A, snd B - snd A)"
definition scalar_mult_vec :: "real => point => point" where
  "scalar_mult_vec k v = (k * fst v, k * snd v)"
definition add_points_or_vectors :: "point => point => point" where
  "add_points_or_vectors A B = (fst A + fst B, snd A + snd B)"
definition dot_product_vecs :: "point => point => real" where
  "dot_product_vecs u v = (fst u * fst v) + (snd u * snd v)"
definition norm_squared_vec :: "point => real" where
  "norm_squared_vec v = dot_product_vecs v v"
definition norm_of_vec :: "point => real" where
  "norm_of_vec v = sqrt (norm_squared_vec v)" 
definition angle_rad_between_vectors :: "point => point => real" where
  "angle_rad_between_vectors u v = acos (dot_product_vecs u v / (norm_of_vec u * norm_of_vec v))"
definition angle_in_degrees_at_vertex :: "point => point => point => real" where
  "angle_in_degrees_at_vertex A B C = angle_rad_between_vectors (vec_of_points B A) (vec_of_points B C) * (180 / pi)"
record Circle =
  circle_center :: point
  circle_radius :: real
definition is_point_on_circle :: "point => Circle => bool" where
  "is_point_on_circle P C = (norm_of_vec (vec_of_points (circle_center C) P) = circle_radius C)"
definition is_line_tangent_to_circle :: "point => point => Circle => bool" where
  "is_line_tangent_to_circle P T C = (
    is_point_on_circle T C ∧
    P ≠ T ∧ 
    dot_product_vecs (vec_of_points (circle_center C) T) (vec_of_points T P) = 0 
  )"
definition is_point_on_line :: "point => point => point => bool" where
  "is_point_on_line A P Q = (P ≠ Q ∧ (∃ (k::real). A = add_points_or_vectors P (scalar_mult_vec k (vec_of_points P Q))))"
definition is_point_on_segment :: "point => point => point => bool" where
  "is_point_on_segment A P Q = (P ≠ Q ∧ (∃ (k::real). A = add_points_or_vectors P (scalar_mult_vec k (vec_of_points P Q)) ∧ k ≥ 0 ∧ k ≤ 1))"
locale GeometricProblemSetup =
  fixes O P S T Y Z :: point 
  fixes C :: Circle          
  assumes radius_is_positive: "circle_radius C > 0" 
  assumes O_is_center: "circle_center C = O" 
  assumes T_is_on_circle: "is_point_on_circle T C" 
  assumes S_is_on_circle: "is_point_on_circle S C" 
  assumes Y_is_on_circle: "is_point_on_circle Y C" 
  assumes PT_is_tangent: "is_line_tangent_to_circle P T C" 
  assumes PS_is_tangent: "is_line_tangent_to_circle P S C" 
  assumes Z_on_line_PY: "is_point_on_line Z P Y" 
  assumes Z_on_segment_OS: "is_point_on_segment Z O S" 
  assumes P_not_equal_Y: "P ≠ Y"
  assumes T_not_equal_Y: "T ≠ Y"
  assumes angle_SPZ_is_10_degrees: "angle_in_degrees_at_vertex S P Z = 10"
  assumes angle_TOS_is_150_degrees: "angle_in_degrees_at_vertex T O S = 150"
  shows Sum_of_angles_PTY_and_PYT_is_160_degrees:
    "angle_in_degrees_at_vertex P T Y + angle_in_degrees_at_vertex P Y T = 160"
end