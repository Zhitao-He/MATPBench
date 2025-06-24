theory Square_Between_Circles
  imports Complex_Main
begin
type_synonym point = "real × real"
record circle =
  center :: point
  radius :: real
record square =
  lower_left :: point
  side :: real
definition r :: real where "r = 1000"
definition s :: real where "s = 400"
definition O1 :: point where "O1 = (0, r)"
definition O2 :: point where "O2 = (2*r, r)"
definition C1 :: circle where "C1 = \<lparr>center = O1, radius = r\<rparr>"
definition C2 :: circle where "C2 = \<lparr>center = O2, radius = r\<rparr>"
definition line_y0 :: "point ⇒ bool" where
  "line_y0 p ≡ snd p = 0"
definition S_ll :: point where "S_ll = (r - s/2, 0)"
definition S :: square where "S = \<lparr>lower_left = S_ll, side = s\<rparr>"
definition S_vertices :: "point set" where
  "S_vertices = {
    S_ll,
    (fst S_ll + s, snd S_ll),
    (fst S_ll, snd S_ll + s),
    (fst S_ll + s, snd S_ll + s)
  }"
definition square_fits_snugly :: bool where
  "square_fits_snugly ≡
    (∀v∈S_vertices. snd v ≥ 0) ∧
    (∀v∈S_vertices. dist v (center C1) ≤ r) ∧
    (∀v∈S_vertices. dist v (center C2) ≤ r) ∧
    (∃v1∈S_vertices. snd v1 = 0) ∧
    (∃v2∈S_vertices. dist v2 (center C1) = r) ∧
    (∃v3∈S_vertices. dist v3 (center C2) = r)
  "
end