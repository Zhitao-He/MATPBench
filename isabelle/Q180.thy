theory ShadedFigureArea
imports Complex_Main 
begin

theorem shaded_figure_area:
  "let rect_length = 20 :: real;
       rect_width = 15 :: real;
       tri_base = 8 :: real;
       tri_height = 15 :: real;
       rect_area = rect_length * rect_width;
       tri_area = (tri_base * tri_height) / 2;
       total_area = rect_area + tri_area;
       rounded_area = round (total_area * 10) / 10
   in rounded_area = 420"
  by (simp add: Let_def)

end