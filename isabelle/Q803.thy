theory AngleProblem
imports Main HOL.Euclidean_Geometry
begin
locale angle_problem =
  fixes A B C D :: "euclidean_point"
  assumes not_collinear: "~collinear {A, B, C}"
    and DC_eq_DA: "dist D C = dist D A"
    and angle_ACD: "angle A C D = 66 / 180 * pi"
    and angle_DBA: "angle D B A = 24 / 180 * pi"
context angle_problem
begin
theorem angle_DAC: "angle D A C = 66 / 180 * pi"
  oops