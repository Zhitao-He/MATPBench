theory Triangle_Area_Problem
  imports Complex_Main
begin
type_synonym point = "real × real"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 1/2 * abs ((fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A))"
locale triangle_problem =
  fixes A B C D E :: point
  assumes area_ABC: "triangle_area A B C = 6"
    and parallel_AB_DE: "∃k::real. (fst D - fst E, snd D - snd E) = k *⇩R (fst A - fst B, snd A - snd B)"
    and BD_4BC: "sqrt ((fst B - fst D)^2 + (snd B - snd D)^2) = 4 * sqrt ((fst B - fst C)^2 + (snd B - snd C)^2)"
    and area_CDE: "triangle_area C D E = 54"
end
end