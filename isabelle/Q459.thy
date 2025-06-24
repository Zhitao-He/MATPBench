theory Rectangle_Area_Problem
  imports Main
begin
type_synonym point = "real × real"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (b, 0)"
definition C :: point where "C = (b, h)"
definition D :: point where "D = (0, h)"
definition M :: point where "M = (m, 0)"
definition N :: point where "N = (b, n)"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle P Q R = 1/2 * abs ((fst Q - fst P) * (snd R - snd P) - (fst R - fst P) * (snd Q - snd P))"
axiomatization where
  area_ABM: "area_triangle A B M = 3" and
  area_BNM: "area_triangle B N M = 20" and
  area_CND: "area_triangle C N D = 2"
definition area_DMNC :: real where
  "area_DMNC = 
    (let
      area_rect = b * h;
      area_known = area_triangle A B M + area_triangle B N M + area_triangle C N D
    in
      area_rect - area_known
    )"
end