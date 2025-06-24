theory Pentagon_Arc_Problem
  imports
    "HOL-Analysis.Euclidean_Space" 
    "HOL-Analysis.Angle"          
    "HOL-Library.List"            
    "HOL-Library.Pi"              
begin
type_synonym point = "real^2"
theorem regular_pentagon_tangent_circle_arc_measure:
  fixes A B C D E :: point 
  fixes O :: point         
  fixes r :: real           
  assumes
    distinct_vertices: "distinct [A,B,C,D,E]" and
    side_len_pos: "dist A B > 0" and
    side_AB_eq_BC: "dist A B = dist B C" and
    side_BC_eq_CD: "dist B C = dist C D" and
    side_CD_eq_DE: "dist C D = dist D E" and
    side_DE_eq_EA: "dist D E = dist E A" and
    angle_EAB: "Angle.angle (E-A) (B-A) = (3 * pi / 5)" and
    angle_ABC: "Angle.angle (A-B) (C-B) = (3 * pi / 5)" and
    angle_BCD: "Angle.angle (B-C) (D-C) = (3 * pi / 5)" and
    angle_CDE: "Angle.angle (C-D) (E-D) = (3 * pi / 5)" and
    angle_DEA: "Angle.angle (D-E) (A-E) = (3 * pi / 5)" and
    radius_pos: "r > 0" and
    A_on_circle: "dist O A = r" and
    D_on_circle: "dist O D = r" and
    tangent_DC_at_D: "(O - D) \<cdot> (C - D) = 0" and
    tangent_AB_at_A: "(O - A) \<cdot> (B - A) = 0"
  shows "Angle.angle (A-O) (D-O) = (4 * pi / 5)"
  oops 
end