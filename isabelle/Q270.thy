theory CompositeT
imports Complex_Main "HOL-Library.Real_Vector_Spaces"
begin
definition top_box_length :: real where "top_box_length = 12::real"
definition top_box_width :: real where "top_box_width = 1::real"
definition top_box_height :: real where "top_box_height = 1::real"
definition stem_box_length :: real where "stem_box_length = 4::real"
definition stem_box_width :: real where "stem_box_width = 1::real"
definition stem_box_height :: real where "stem_box_height = 7::real"
definition top_box_surface_area :: real where
  "top_box_surface_area = 
    2 * (top_box_length * top_box_width + 
         top_box_length * top_box_height + 
         top_box_width * top_box_height)"
definition stem_box_surface_area :: real where
  "stem_box_surface_area = 
    2 * (stem_box_length * stem_box_width + 
         stem_box_length * stem_box_height + 
         stem_box_width * stem_box_height)"
definition contact_area :: real where
  "contact_area = stem_box_length * stem_box_width"
definition composite_T_solid_surface_area :: real where
  "composite_T_solid_surface_area = 
    top_box_surface_area + stem_box_surface_area - 2 * contact_area"
theorem surface_area_equals_120:
  "composite_T_solid_surface_area = 120"
  unfolding composite_T_solid_surface_area_def top_box_surface_area_def stem_box_surface_area_def
            contact_area_def top_box_length_def top_box_width_def top_box_height_def
            stem_box_length_def stem_box_width_def stem_box_height_def
  by (simp add: algebra_simps)