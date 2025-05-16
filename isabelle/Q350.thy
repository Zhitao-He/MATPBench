theory AngleSum
  imports Main HOL.Euclidean_Geometry
begin
section "In triangle ABC, x + y = 90"
locale triangle =
  fixes A B C :: "real^2"
  assumes non_collinear: "~(collinear {A, B, C})"
context triangle 
begin
  definition "x = angle A B C"
  definition "y = angle A C B"
  theorem angles_sum:
    "x + y = 90"
  sorry