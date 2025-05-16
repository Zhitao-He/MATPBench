theory QuadrilateralArea
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst q - fst p)^2 + (snd q - snd p)^2)"
definition perpendicular :: "real × real ⇒ real × real ⇒ bool" where
  "perpendicular v w = (fst v * fst w + snd v * snd w = 0)"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral A B C D = 
    abs ((fst A * snd B - fst B * snd A) + 
         (fst B * snd C - fst C * snd B) +
         (fst C * snd D - fst D * snd C) +
         (fst D * snd A - fst A * snd D)) / 2"
definition point_on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "point_on_line A B P = (∃k. P = (fst A + k * (fst B - fst A), snd A + k * (snd B - snd A)))"
definition foot_of_perpendicular :: "point ⇒ point ⇒ point ⇒ point" where
  "foot_of_perpendicular A B P = 
    let v = vec A B;
        w = vec A P;
        k = (fst v * fst w + snd v * snd w) / (fst v^2 + snd v^2)
    in (fst A + k * fst v, snd A + k * snd v)"
theorem quadrilateral_area_625:
  fixes A B C D E :: point
  assumes 
    "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A"
    "E = foot_of_perpendicular A B D"
    "perpendicular (vec D A) (vec D C)"
    "perpendicular (vec B A) (vec B C)"
    "dist A D = dist D C"
    "dist D E = 25"
  shows "area_quadrilateral A B C D = 625"