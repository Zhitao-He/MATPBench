theory GeometryProblem
  imports Complex_Main "HOL-Algebra.Euclidean_Space"
begin
locale geometry_problem =
  fixes A B C D R :: "real^2"
  assumes 
    AC_length: "norm (C - A) = 12"
    and BC_length: "norm (C - B) = 9"
    and RB_length: "norm (B - R) = 7"
    and RD_length: "norm (D - R) = 6"
    and DC_perp_BC: "((D - C) ∙ (B - C)) = 0" 