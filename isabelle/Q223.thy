theory Sector_Area_Problem_Definition
  imports "HOL-Analysis.Real" 
begin
definition radius_from_image :: real where
  "radius_from_image = 5.0"
definition angle_degrees_from_image :: real where
  "angle_degrees_from_image = 23.0"
definition sector_area_formula :: "real ⇒ real ⇒ real" where
  "sector_area_formula r angle_deg = (angle_deg / 360.0) * pi * (r⇧<sup>2</sup>)"
definition calculated_area_from_image :: real where
  "calculated_area_from_image = sector_area_formula radius_from_image angle_degrees_from_image"
definition area_value_from_text :: real where
  "area_value_from_text = 7352.0"
end