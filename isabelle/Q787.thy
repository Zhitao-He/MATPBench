theory GeometryProblem
imports Main HOL.Real
begin
locale geometry_problem =
  fixes Q R S T P :: "real × real"
  fixes x y z :: real
  assumes RP_eq: "dist R P = y + 4"
  and RS_eq: "dist R S = 27"
  and TP_eq: "dist T P = 2*y - 5"
  and TQ_eq: "dist T Q = 5*x"
  and angle_PQT: "angle P Q T = 95" 
  and angle_RQP: "angle R Q P = 33"
  and angle_TSP: "angle T S P = 3*z"
  and parallelogram_QTSR: "
    parallel_line Q T S R ∧
    parallel_line Q R T S ∧
    dist Q T = dist R S ∧
    dist Q R = dist T S"
theorem value_of_x:
  assumes "geometry_problem Q R S T P x y z"
  shows "x = 27/5"
  oops