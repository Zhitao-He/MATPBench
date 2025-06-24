theory Geometry_Problem_Formalization
imports Complex_Main 
begin
type_synonym point = "real^2"
fixes A :: point
fixes B :: point
fixes C :: point
fixes D :: point
fixes x :: real
fixes y :: real
fixes z :: real
axiomatize
  len_AB: "dist A B = 12" and
  len_AC: "dist A C = y" and
  len_AD: "dist A D = 4" and
  len_BC: "dist B C = x" and
  len_CD: "dist C D = z" and
  positive_lengths: "x > 0 \<and> y > 0 \<and> z > 0" and
  collinear_B_A_D: "dist B D = dist A B + dist A D" and
  perpendicular_BAC: "(B - A) \<cdot> (C - A) = 0" and
  perpendicular_BCD: "(B - C) \<cdot> (D - C) = 0"
lemma value_of_x: "x = 8 * sqrt 3"
  oops 
end