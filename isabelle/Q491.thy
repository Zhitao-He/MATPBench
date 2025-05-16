theory MQP_Angle_Theorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale parallelogram =
  fixes M N Q P :: "'a::euclidean_space"
  assumes parallelogram: "M - N = Q - P" and "M - P = Q - N"
locale angle_problem = parallelogram +
  fixes x :: real
  assumes angle_NMQ: "angle N M Q = 10 * x"
  and angle_MNP: "angle M N P = 20 * x"
  and angle_equal1: "angle P N M = angle M Q P"
  and angle_equal2: "angle Q P N = angle N M Q"
context angle_problem
begin
theorem measure_angle_MQP_120: "angle M Q P = 120"
  (* Proof would go here *)
  sorry