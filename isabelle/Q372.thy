theory Shaded_Square_Fraction
  imports Main 
begin
type_synonym point = "real \<times> real"
definition s :: real where "s = 1" 
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (s, 0)"
definition C :: point where "C = (s, s)"
definition D :: point where "D = (0, s)"
definition M_bottom :: point where "M_bottom = (s/2, 0)" 
definition M_right :: point where "M_right = (s, s/2)"   
definition P1 :: point where "P1 = (s/3, s/3)"
definition P2 :: point where "P2 = C" 
definition P3 :: point where "P3 = M_right" 
definition P4 :: point where "P4 = (2*s/5, s/5)"
definition triangle_area :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real" where
  "triangle_area (x1,y1) (x2,y2) (x3,y3) =
    0.5 * abs (x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2))"
definition shaded_region_area :: real where
  "shaded_region_area = triangle_area P1 P2 P3 + triangle_area P1 P3 P4"
definition square_total_area :: real where
  "square_total_area = s * s"
lemma fraction_of_shaded_area_claim:
  "shaded_region_area / square_total_area = 3/16"
end