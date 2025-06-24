theory Geometry_Problem
  imports Main
begin
typedecl Point
consts A B C D E :: Point
consts x :: real
consts len :: "Point ⇒ Point ⇒ real"
consts perpendicular :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
consts collinear :: "Point ⇒ Point ⇒ Point ⇒ bool"
axiomatization where
  AE_length: "len A E = 2 * x + 1"
axiomatization where
  EB_length: "len E B = 3 * x - 5"
axiomatization where
  CD_eq_DB: "len C D = len D B"
axiomatization where
  CA_perp_EA: "perpendicular C A E A"
axiomatization where
  DE_perp_BE: "perpendicular D E B E"
axiomatization where
  A_E_B_collinear: "collinear A E B"
axiomatization where
  C_D_B_collinear: "collinear C D B"
axiomatization where
  C_D_E_collinear: "collinear C D E"
definition Value :: "real ⇒ bool" where
  "Value x ≡ (x = 6)"
end