theory ParallelogramArea
  imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem parallelogram_area_25_21_20:
  "let base = 21 :: real;
       side = 25 :: real;
       height = 20 :: real;
       area = base * height
   in area = 420"
  by (simp add: Let_def)