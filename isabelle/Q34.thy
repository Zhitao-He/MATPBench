theory IsoscelesTriangleAC
  imports Main "HOL-Analysis.Analysis"
begin

theorem isosceles_triangle_AC_length:
  assumes "isosceles_triangle A B C"
  shows "dist A C = 7"
  oops

end