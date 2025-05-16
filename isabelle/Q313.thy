theory SquareEquilateralTriangleTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst q - fst p)^2 + (snd q - snd p)^2)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    let 
      v1 = (fst A - fst B, snd A - snd B);
      v2 = (fst C - fst B, snd C - snd B);
      dot_product = fst v1 * fst v2 + snd v1 * snd v2;
      len_v1 = sqrt((fst v1)^2 + (snd v1)^2);
      len_v2 = sqrt((fst v2)^2 + (snd v2)^2)
    in
      acos (dot_product / (len_v1 * len_v2)) * 180 / pi"
definition right_angle :: "point ⇒ point ⇒ point ⇒ bool" where
  "right_angle A B C = (abs(angle A B C - 90) < 0.0001)"
definition quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "quadrilateral A B C D = (A ≠ B ∧ B ≠ C ∧ C ≠ D ∧ D ≠ A)"
theorem square_equilateral_triangle_angle:
  fixes A B C D E :: point
  assumes "quadrilateral A B C D"                  
    and "distance A B = distance B C"              
    and "distance B C = distance C D"
    and "distance C D = distance D A"
    and "right_angle A B C"                        
    and "right_angle B C D"
    and "right_angle C D A"
    and "right_angle D A B"
    and "distance A E = distance E D"              
    and "distance A E = distance A D"
  shows "angle B A E = 30"                         