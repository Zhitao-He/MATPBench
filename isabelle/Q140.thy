theory Geometry_ADE_BDC
  imports Complex_Main
begin
type_synonym point = "real × real"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 1/2 * abs ((fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A))"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (4, 0)"
definition C :: point where "C = (4, 6)"
definition E :: point where "E = (0, 8)"
definition line_param :: "point ⇒ point ⇒ real ⇒ point" where
  "line_param P Q t = (fst P + t * (fst Q - fst P), snd P + t * (snd Q - snd P))"
definition D :: point where
  "D = (
    let
      s = 4 / 5;
      t = 3 / 5
    in
      line_param A C s
  )"
definition area_ADE :: real where
  "area_ADE = triangle_area A D E"
definition area_BDC :: real where
  "area_BDC = triangle_area B D C"
definition area_diff :: real where
  "area_diff = abs (area_ADE - area_BDC)"
end