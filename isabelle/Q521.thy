theory Geometry_Problem_Definition
imports Main
begin
locale geometry_problem =
  fixes x :: real
  fixes y :: real
  fixes angle_EYQ :: real
  fixes angle_MAQ :: real
  fixes angle_YQF :: real
  fixes angle_MYQ :: real 
  fixes p_EF_parallel_YQ :: bool 
  fixes p_QA_parallel_YM :: bool 
  fixes p_YQ_parallel_MA :: bool 
  assumes angle_EYQ_expr: "angle_EYQ = (3 * y + 1)"
  assumes angle_MAQ_expr: "angle_MAQ = (3 * x + 11)"
  assumes angle_YQF_expr: "angle_YQF = (4 * x - 5)"
  assumes EF_is_parallel_to_YQ: "p_EF_parallel_YQ"
  assumes QA_is_parallel_to_YM: "p_QA_parallel_YM"
  assumes YQ_is_parallel_to_MA: "p_YQ_parallel_MA"
  assumes rule_corresponding_angles_equal:
    "p_YQ_parallel_MA \<Longrightarrow> angle_YQF = angle_MAQ"
  assumes rule_parallelogram_opposite_angles_equal:
    "(p_QA_parallel_YM \<and> p_YQ_parallel_MA) \<Longrightarrow> angle_MYQ = angle_MAQ"
  assumes rule_adjacent_angles_on_straight_line:
    "angle_EYQ + angle_MYQ = 180"
end