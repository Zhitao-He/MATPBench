theory Parallelogram_Area_Problem
  imports Main
begin
typedecl Point
consts dist :: "Point ⇒ Point ⇒ real"
locale parallelogram =
  fixes A B C D :: Point
  assumes parallel1: "dist A B = dist C D"
    and parallel2: "dist A D = dist C B"
consts perpendicular :: "Point ⇒ Point ⇒ Point ⇒ bool"
consts area_quadrilateral :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ real"
locale parallelogram_problem =
  fixes A B C D E :: Point
  assumes parallelogram_CADB: "parallelogram A B C D"
    and AC_25: "dist A C = 25"
    and AD_21: "dist A D = 21"
    and EB_20: "dist E B = 20"
    and DE_perp_BE: "perpendicular E D B"
theorem (in parallelogram_problem)
  shows "area_quadrilateral C A D B = 420"
  sorry
end