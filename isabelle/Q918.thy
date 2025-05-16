theory TriangleGeometry
imports Complex_Main
begin
theorem length_BC_in_triangle:
  fixes A B C :: "complex"
  assumes "cmod (C - A) = 9"          
  shows "cmod (B - C) = 9 * sqrt 3"   