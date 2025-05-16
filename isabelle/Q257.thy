theory CompositeShape
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹This theory calculates the surface area of a composite figure consisting
      of a cone and a hemisphere joined at their bases.›
definition pi :: real where "pi = pi"
definition cone_lateral_area :: "real ⇒ real ⇒ real" where
  "cone_lateral_area r h = pi * r * sqrt(h^2 + r^2)"
definition hemisphere_surface_area :: "real ⇒ real" where 
  "hemisphere_surface_area r = 2 * pi * r^2"
definition composite_surface_area :: "real ⇒ real ⇒ real" where
  "composite_surface_area r h = cone_lateral_area r h + hemisphere_surface_area r"
value "composite_surface_area 43 70"
lemma composite_area_calculated:
  "let r = 43; h = 70 in
   composite_surface_area r h ≈ 23587"
  unfolding composite_surface_area_def cone_lateral_area_def hemisphere_surface_area_def
  by (simp add: pi_def)