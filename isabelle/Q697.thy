theory Geometry_Problem
  imports Complex_Main 
begin
typedecl point 
typedecl line  
consts
  H :: point
  P :: point
  M :: point
  R :: point
  C :: point
  S :: point
  L :: point
  E :: point
  N :: point
  G :: point
  I :: point
  D :: point
consts
  x :: real
  y :: real
  z :: real
consts mk_line :: "point => point => line"
consts parallel :: "line => line => bool" (infix "∥" 50)
consts angle :: "point => point => point => real"
axiom angle_HPM_def: "angle H P M = 4 * y"
axiom angle_MPR_def: "angle M P R = 68"
axiom angle_PRC_def: "angle P R C = x"
axiom angle_SCR_def: "angle S C R = 5 * z + 2" 
axiom HPR_is_straight_angle: "angle H P R = 180"
axiom HPM_MPR_angles_add_to_HPR: "angle H P M + angle M P R = angle H P R"
axiom CM_is_parallel_to_RP: "mk_line C M ∥ mk_line R P"
axiom CR_is_parallel_to_MP: "mk_line C R ∥ mk_line M P"
theorem y_value_is_28: "y = 28"
proof -
  have "4 * y + 68 = 180"
    by (simp add: HPM_MPR_angles_add_to_HPR angle_HPM_def angle_MPR_def HPR_is_straight_angle)
  then show ?thesis
    by simp
qed
end