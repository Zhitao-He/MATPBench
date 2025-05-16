theory ParallelogramArea
imports Complex_Main 
begin
locale parallelogram =
  fixes A B C D :: "complex"
  assumes is_parallelogram: "B - A = D - C"
definition "inside_quadrilateral E A B C D = True"  
definition area_triangle :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "area_triangle A B C = norm (cmod ((B - A) * (C - A) * \<i>)) / 2"
definition area_quad :: "complex ⇒ complex ⇒ complex ⇒ complex ⇒ real" where
  "area_quad A B C D = area_triangle A B C + area_triangle A C D"
theorem shaded_area_half:
  assumes "parallelogram A B C D"
    and "inside_quadrilateral E A B C D"
    and "area_quad A B C D = 6"
  shows "area_triangle B C E + area_triangle C D E = 3"
  sorry