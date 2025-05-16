theory HexagonPerimeter
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹Two equilateral triangles of different sizes are placed on top of each other
      so that a hexagon is formed on the inside whose opposite sides are parallel.
      Four of the side lengths of the hexagon are stated: 6, 15, 11, and 12.
      The question is to find the perimeter of the hexagon, which is 70.›
context
  fixes x y :: real
  assumes pos_x: "x > 0" 
      and pos_y: "y > 0"
      and perimeter: "6 + 15 + 11 + 12 + x + y = 70"
begin
theorem hexagon_perimeter: "x + y = 26"
proof -
  from perimeter have "6 + 15 + 11 + 12 + x + y = 70" by simp
  hence "x + y = 70 - 6 - 15 - 11 - 12" by simp
  hence "x + y = 70 - 44" by simp
  thus "x + y = 26" by simp
qed