theory Geometry_Problem_Formalization
imports Main 
begin
typedecl Point
consts B :: Point
consts C :: Point
consts D :: Point
consts E :: Point
consts F :: Point
consts H :: Point
consts I :: Point
consts J :: Point
consts K :: Point
consts x :: real
consts is_collinear :: "Point => Point => Point => bool"
consts lines_parallel :: "Point => Point => Point => Point => bool" 
consts angle_measure :: "Point => Point => Point => real" 
axiomatization where
  collinear_B_C_D: "is_collinear B C D" and
  collinear_F_E_H: "is_collinear F E H" and
  angle_BCJ_is_105: "angle_measure B C J = 105.0" and
  angle_CIE_is_x:   "angle_measure C I E = x" and
  angle_KEF_is_125: "angle_measure K E F = 125.0" and
  BD_parallel_FH: "lines_parallel B D F H" and
  angle_JCD_definition: "is_collinear B C D 
    => angle_measure J C D = 180.0 - angle_measure B C J" and
  angle_HEK_definition: "is_collinear F E H 
    => angle_measure H E K = 180.0 - angle_measure K E F" and
  angle_DCI_equals_JCD: "angle_measure D C I = angle_measure J C D" and
  angle_HEI_equals_HEK: "angle_measure H E I = angle_measure H E K" and
  x_is_sum_of_components: "lines_parallel B D F H 
    => angle_measure C I E = angle_measure D C I + angle_measure H E I"
end