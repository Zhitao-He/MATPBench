theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale angle_problem =
  fixes A B C D E :: "real^2"
  assumes non_collinear_ACB: "¬ collinear {A, C, B}"
  assumes non_collinear_CDE: "¬ collinear {C, D, E}"
  assumes non_collinear_EBD: "¬ collinear {E, B, D}"
  assumes angle_CAE: "angle C A E = 95"
  assumes angle_ECB: "angle B C E = 33"
  assumes angle_BDE: "angle B D E = 109"
  assumes angle_CBE: "angle C B E = 24"
context angle_problem
begin
theorem angle_EBD: "angle E B D = 14"
  oops