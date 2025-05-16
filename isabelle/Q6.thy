theory RightTriangle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
context
  fixes A B C D :: "real^2"
  assumes right_angle: "angle A C B = pi/2"
  assumes midpoint_D: "D = (A + B) / 2"
  assumes AB_length: "norm (A - B) = 10"
begin
theorem CD_length: "norm (C - D) = 5"
  oops