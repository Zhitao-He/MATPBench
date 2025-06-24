theory Geometry_Problem_Formalization
imports Main "HOL-Analysis.Real" 
begin
definition angle_MRQ_expr_val :: "real => real" where
  "angle_MRQ_expr_val x = 5 * x + 7"
definition angle_RPN_expr_val :: "real => real" where
  "angle_RPN_expr_val x = 7 * x - 21"
definition parallelism_condition :: "real => bool" where
  "parallelism_condition x = (angle_MRQ_expr_val x + angle_RPN_expr_val x = 180)"
definition target_angle_MRQ_value :: real where
  "target_angle_MRQ_value = 77"
definition x_meets_problem_criteria :: "real => bool" where
  "x_meets_problem_criteria x = (parallelism_condition x ∧ angle_MRQ_expr_val x = target_angle_MRQ_value)"
end