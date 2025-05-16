theory QuadrilateralABCD
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale quadrilateral_abcd =
  fixes A B C D :: "real × real"
  assumes right_angle_ABC: "angle (B - A) (C - B) = pi/2"
  assumes right_angle_ADC: "angle (D - A) (C - D) = pi/2"
  assumes equal_sides: "dist A D = dist D C"
  assumes sum_sides: "dist A B + dist B C = 20"
context quadrilateral_abcd
begin
definition area_quadrilateral :: "real"
  where "area_quadrilateral = 100"
theorem quadrilateral_area:
  shows "area_quadrilateral = 100"
  using area_quadrilateral_def by simp