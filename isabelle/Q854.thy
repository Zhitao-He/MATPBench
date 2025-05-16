theory Length_PS_Theorem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale length_ps_problem =
  fixes P Q R S T :: "real^2"
  assumes non_collinear: "¬collinear {P, Q, R}"
    and S_on_RP: "between R S P"
    and RS_length: "dist R S = 3"
    and T_on_QP: "between Q T P"
    and TQ_length: "dist T Q = 3"
    and PT_length: "dist P T = 8"
    and ST_parallel_QR: "parallel_lines (Line S T) (Line Q R)"
begin
theorem length_PS_eq_8: "dist P S = 8"
proof -
  have sim_triangle: "similar_triangles P T S P Q R"
  proof -
    (* ST parallel to QR implies corresponding angles are equal *)
    have "angle S T P = angle Q R P"
      using ST_parallel_QR by (simp add: parallel_lines_imp_eq_angles)
    (* Angle at P is common to both triangles *)
    have "angle T P S = angle Q P R"
      by simp
    (* By AA similarity criterion *)
    thus ?thesis
      by (rule similar_triangles_by_aa)
  qed
  (* From similar triangles, corresponding sides are proportional *)
  have "dist P S / dist P R = dist P T / dist P Q"
    using sim_triangle by (simp add: similar_triangles_prop)
  (* Using known values *)
  moreover have "dist P T = 8" 
    by (simp add: PT_length)
  (* Solving for PS *)
  ultimately show ?thesis 
    using RS_length S_on_RP TQ_length T_on_QP
    by (metis dist_triangle_inequality)
qed