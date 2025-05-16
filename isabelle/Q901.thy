theory GeometryProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes P Q R S :: "real^2"
  assumes ps_eq_rs: "norm (S - P) = norm (S - R)"
    and angle_qsr: "angle (Q - S) (R - S) = 48 * pi / 180"
    and angles_equal: "angle (S - Q) (P - Q) = angle (R - Q) (S - Q)"
    and qp_perp_sp: "inner (Q - P) (S - P) = 0"
    and sr_perp_qr: "inner (S - R) (Q - R) = 0"
context geometry_problem
begin
theorem angle_sqp_measure: "angle (S - Q) (P - Q) = 42 * pi / 180"
  