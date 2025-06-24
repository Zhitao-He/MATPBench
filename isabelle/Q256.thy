theory Surface_Area_Solid
  imports Complex_Main
begin
record box =
  length :: real
  width :: real
  height :: real
definition box1 :: box where
  "box1 = \<lparr>length = 33, width = 25, height = 20\<rparr>"
definition box2 :: box where
  "box2 = \<lparr>length = 33, width = 25, height = 20\<rparr>"
record cylinder =
  radius :: real
  height :: real
definition connecting_cylinder :: cylinder where
  "connecting_cylinder = \<lparr>radius = 6, height = 11\<rparr>"
definition box_surface_area :: "box \<Rightarrow> real" where
  "box_surface_area b = 2 * (length b * width b + length b * height b + width b * height b)"
definition cylinder_lateral_area :: "cylinder \<Rightarrow> real" where
  "cylinder_lateral_area c = 2 * pi * radius c * height c"
definition cylinder_base_area :: "cylinder \<Rightarrow> real" where
  "cylinder_base_area c = 2 * pi * (radius c)\<^sup>2"
definition hole_area :: "cylinder \<Rightarrow> real" where
  "hole_area c = pi * (radius c)\<^sup>2"
definition total_surface_area :: real where
  "total_surface_area = 
    2 * box_surface_area box1
    + cylinder_lateral_area connecting_cylinder
    - 2 * hole_area connecting_cylinder"
end