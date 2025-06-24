theory Circle_Radii_Length_AC
  imports Complex_Main
begin
typedecl point
consts A :: point
consts B :: point
consts C :: point
consts rA :: real
consts rB :: real
consts rC :: real
definition circumference :: "real ⇒ real" where
  "circumference r = 2 * pi * r"
axiomatization where
  sum_circumferences: "circumference rA + circumference rB + circumference rC = 42 * pi"
axiomatization where
  rA_twice_rB: "rA = 2 * rB"
axiomatization where
  rA_four_rC: "rA = 4 * rC"
definition dist :: "point ⇒ point ⇒ real" ("dist _ _" [100,100] 100)
  where "dist P Q ≡ undefined" 
axiomatization where
  AC_is_sum_radii: "dist A C = rA + rB + rC"
theorem AC_eq_27: "dist A C = 27"
  sorry
end