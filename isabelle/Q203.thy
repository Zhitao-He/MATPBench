theory Semicircle_Bridge
  imports Complex_Main
begin
type_synonym point = "real × real"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (8, 0)"
definition C :: point where "C = (4, 4)"
definition O :: point where "O = (4, 0)"
definition r :: real where "r = 4"
definition semicircle_ACB :: "point ⇒ bool" where
  "semicircle_ACB P ⟷ ((P = (x, y)) ∧ ((x - 4)^2 + y^2 = 16) ∧ y ≥ 0)"
definition A' :: point where "A' = (x, 1)"  
definition B' :: point where "B' = (x, 1)"  
definition water_surface_width :: real where
  "water_surface_width = 
    (let x1 = 4 - sqrt(15); x2 = 4 + sqrt(15) in x2 - x1)"
end