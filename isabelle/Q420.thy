theory Geometry_Problem
  imports
    "HOL-Analysis.Dimension_Two" 
    "HOL-Analysis.Angle"         
    "HOL-Analysis.Collinear"     
begin
type_synonym point = "real^2"
definition degrees_to_radians :: "real => real" where
  "degrees_to_radians d = d * (pi / 180)"
definition radians_to_degrees :: "real => real" where
  "radians_to_degrees r = r * (180 / pi)"
definition is_equilateral_triangle :: "point => point => point => bool" where
  "is_equilateral_triangle A B C = (dist A B > 0 ∧ dist A B = dist B C ∧ dist B C = dist C A)"
definition det_2d :: "point => point => real" where
  "det_2d u v = ((fst u * snd v) - (snd u * fst v))"
definition vec_parallel :: "point => point => bool" where
  "vec_parallel u v = (det_2d u v = 0)"
locale geometric_configuration =
  fixes A B C P Q R X Y :: point  
  fixes L P_prime :: point        
  assumes
    distinct_ABC: "A ≠ B ∧ B ≠ C ∧ C ≠ A" and
    distinct_PQR: "P ≠ Q ∧ Q ≠ R ∧ R ≠ P" and
    equilateral_ABC: "is_equilateral_triangle A B C" and
    equilateral_PQR: "is_equilateral_triangle P Q R" and
    collinear_LBP: "collinear {L, B, P}" and
    collinear_BPP_prime: "collinear {B, P, P_prime}" and
    L_neq_B: "L ≠ B" and P_neq_P_prime: "P_prime ≠ P" and B_neq_P: "B ≠ P" and
    order_LBP: "dist L P = dist L B + dist B P" and 
    order_BPP_prime: "dist B P_prime = dist B P + dist P P_prime" and 
    angle_LBA_is_65: "radians_to_degrees (angle L B A) = 65" and
    angle_P_prime_PQ_is_75: "radians_to_degrees (angle P_prime P Q) = 75" and
    orientation_A: "det_2d (A-B) (L-B) > 0" and
    orientation_Q: "det_2d (Q-P) (P_prime-P) < 0" and
    X_on_line_AC: "collinear {A, X, C}" and  
    X_on_line_BR: "collinear {B, X, R}" and  
    AC_BR_not_parallel: "¬ vec_parallel (C-A) (R-B)" and
    Y_on_line_BC: "collinear {B, Y, C}" and  
    Y_on_line_PQ: "collinear {P, Y, Q}" and  
    BC_PQ_not_parallel: "¬ vec_parallel (C-B) (Q-P)" and
    C_neq_X: "C ≠ X" and
    X_neq_Y: "X ≠ Y"
theorem (in geometric_configuration) angle_CXY_is_40_degrees:
  "radians_to_degrees (angle C X Y) = 40"
end