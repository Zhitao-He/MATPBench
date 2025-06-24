theory Geometry_Problem
  imports "HOL-Analysis.Euclidean_Space"
          "HOL-Analysis.Affine_Sets" 
          "HOL-Analysis.Multivariate_Collinear" 
begin
definition degrees_of_radians :: "real \<Rightarrow> real" where
  "degrees_of_radians rad = rad * (180 / pi)"
definition radians_of_degrees :: "real \<Rightarrow> real" where
  "radians_of_degrees deg = deg * (pi / 180)"
theorem geometric_problem_statement:
  fixes A B C D E :: "real^2" 
  fixes x :: real 
  assumes
    line_L1_properties: "D \<noteq> A \<and> E \<noteq> A \<and> D \<noteq> E \<and> collinear {D, A, E} \<and> angle (D - A) (E - A) = pi" and
    line_L2_properties: "B \<noteq> C" and
    L1_parallel_L2: "affine_parallel (line D E) (line B C)" and
    triangle_ABC: "A \<noteq> B \<and> A \<noteq> C \<and> \<not> collinear {A, B, C}" and
    B_not_on_L1: "\<not> collinear {D, A, B}" and
    C_not_on_L1: "\<not> collinear {D, A, C}" and
    AB_eq_BC: "dist A B = dist B C" and
    angle_DAB: "angle (D - A) (B - A) = radians_of_degrees 124" and
    angle_EAC: "angle (E - A) (C - A) = radians_of_degrees x" and
    ordered_angles_at_A: "angle (D - A) (B - A) + angle (B - A) (C - A) + angle (C - A) (E - A) = pi" and
    x_is_valid_angle: "x > 0 \<and> x < 180"
  shows "x = 28" 
end