theory FigureArea
  imports "HOL-Analysis.Analysis" 
begin
definition top_base :: real where
  "top_base = 6"
definition bottom_base :: real where
  "bottom_base = 14"
definition height :: real where
  "height = 4"
definition radius_of_cutout :: real where
  "radius_of_cutout = 4" 
definition area_trapezoid :: "real ⇒ real ⇒ real ⇒ real" where
  "area_trapezoid b1 b2 h = (1/2) * (b1 + b2) * h"
definition area_quarter_circle :: "real ⇒ real" where
  "area_quarter_circle r = (1/4) * pi * (r^2)" 
definition calculated_figure_area :: real where
  "calculated_figure_area = area_trapezoid top_base bottom_base height - area_quarter_circle radius_of_cutout"
lemma statement_to_formalize:
  "calculated_figure_area = 549"
  oops 
end