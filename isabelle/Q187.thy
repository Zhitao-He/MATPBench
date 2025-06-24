theory Isosceles_Trapezoid_Area
  imports Main
begin
locale isosceles_trapezoid =
  fixes a :: real  
    and b :: real  
    and c :: real  
  assumes a_gt_0: "a > 0"
    and b_gt_0: "b > 0"
    and c_gt_0: "c > 0"
definition a :: real where "a = 19"
definition b :: real where "b = 35"
definition perimeter :: real where "perimeter = 74"
definition area :: real where "area = 162"
definition height :: real where
  "height = (2 * area) / (a + b)"
definition leg :: real where
  "leg = sqrt ((height ^ 2) + ((b - a) / 2) ^ 2)"
definition perimeter_expr :: real where
  "perimeter_expr = a + b + 2 * leg"
end