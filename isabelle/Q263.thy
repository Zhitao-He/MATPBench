theory Geometry_Problem_PNM
  imports
    "HOL-Analysis.Product_Vector_Spaces"
    "HOL-Analysis.Euclidean_Space"
    "HOL-Analysis.Angle"
begin
type_synonym point3d = "real × real × real"
locale GeoProblem_Context =
  fixes A B C D M N P :: point3d 
  assumes
    ad_length: "dist A D = 8"
  and
    pc_length: "dist P C = 12"
  and
    ad_eq_bc: "dist A D = dist B C"
  and
    ab_eq_cd: "dist A B = dist C D"
  and
    n_is_midpoint_cd: "N = (1/2 :: real) *⇩<sub>R</sub> (C + D)"
  and
    pm_perp_bd: "(P - M) \<cdot> (D - B) = 0"
  and
    m_on_segment_bd: "∃t::real. t ≥ 0 ∧ t ≤ 1 ∧ M = B + t *⇩<sub>R</sub> (D - B)"
begin
definition Y_radians :: real where
  "Y_radians = vector_angle (P - N) (M - N)"
definition Y :: real where
  "Y = Y_radians * (180 / pi)"
end
definition Y_stated_value :: real where
  "Y_stated_value = 69.30"
    shows "abs ( (GeoProblem_Context.Y problem_instance) - Y_stated_value ) < 0.005"
    sorry 
*)
end