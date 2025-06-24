theory Shaded_Semicircle_Area
  imports Complex_Main
begin
locale semicircle_configuration =
  fixes A B C K O M :: real
  assumes order: "A < K" "K < O" "O < C" "C < M" "M < B"
  assumes OC: "O < C" "C - O = 32"
  assumes CB: "C < B" "B - C = 36"
begin
definition r1 :: real where "r1 = C - A"  
definition r2 :: real where "r2 = C - K"  
definition r3 :: real where "r3 = B - C"  
definition "O = (A + B) / 2"
definition "K = (A + C) / 2"
definition "M = (C + B) / 2"
definition area_semicircle :: "real ⇒ real" where
  "area_semicircle r = (1/2) * pi * r^2"
definition shaded_area :: real where
  "shaded_area = area_semicircle (r1 / 2) - area_semicircle (r2 / 2) - area_semicircle (r3 / 2)"
axiomatization where shaded_area_value: "shaded_area = 900 * pi"
end
end