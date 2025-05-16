theory BMT_Symbol
imports Complex_Main
begin
type_synonym point = "real × real"
definition grid :: "point ⇒ bool" where
  "grid p ⟷ 0 ≤ fst p ∧ fst p ≤ 4 ∧ 0 ≤ snd p ∧ snd p ≤ 4"
definition shaded_poly :: "point list" where
  "shaded_poly = [(0,1), (1,3), (2,2), (3,4), (4,3), (3,2), (4,0), (1,1)]"
fun poly_area :: "point list ⇒ real" where
  "poly_area [] = 0" |
  "poly_area [_] = 0" |
  "poly_area (p1 # p2 # ps) = 
    let area = (fst p1 * snd p2 - fst p2 * snd p1) + poly_area (p2 # ps) in
    if ps = [] then area / 2 else area"
definition closed_poly_area :: "point list ⇒ real" where
  "closed_poly_area ps = (if ps = [] then 0 else
    let ps' = ps @ [hd ps] in
    abs (poly_area ps') / 2)"
theorem area_of_shaded_region: "closed_poly_area shaded_poly = 6"
  sorry