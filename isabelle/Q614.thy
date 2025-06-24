theory Geometry_Problem
  imports Main
begin
typedecl Point
consts x :: real
consts y :: real
consts A B C D E F :: Point
consts len :: "Point ⇒ Point ⇒ real"
definition perpendicular :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "perpendicular P Q R S ≡ 
    (∃a b c d. a ≠ b ∧ c ≠ d ∧ 
      {P,Q} = {a,b} ∧ {R,S} = {c,d} ∧ 
      True
    )"
definition parallel :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "parallel P Q R S ≡ 
    (∃a b c d. a ≠ b ∧ c ≠ d ∧ 
      {P,Q} = {a,b} ∧ {R,S} = {c,d} ∧ 
      True
    )"
definition is_trapezoid :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "is_trapezoid A C D F ≡ 
    (parallel A C D F ∧ ¬ parallel A F C D)"
definition geometry_problem :: bool where
  "geometry_problem ≡
    len A B = (1/4) * x + 5 ∧
    len B C = (1/2) * x - 7 ∧
    len E D = 66 - (2/3) * y ∧
    len F E = (1/3) * y - 6 ∧
    len F E = len E D ∧
    perpendicular A B E B ∧
    perpendicular B C D C ∧
    is_trapezoid A C D F ∧
    x = 48
  "
end