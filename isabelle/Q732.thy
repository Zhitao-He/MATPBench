theory Similar_Triangles_BC
  imports Main
begin
typedecl Point
consts A B C D E :: Point
consts length :: "Point ⇒ Point ⇒ real"
consts x :: real
axiomatization where
  AB_def: "length A B = 10" and
  AE_def: "length A E = 25/4" and
  BC_def: "length B C = x + 2" and
  DE_def: "length D E = x - 1"
axiomatization where
  similar_triangles: "∃f. bij_betw f {A,B,E} {A,C,D} ∧
    (∀P Q ∈ {A,B,E}. length P Q / length (f P) (f Q) = k) 
    for k::real"
definition BC_value :: real where
  "BC_value = length B C"
theorem BC_is_8: "BC_value = 8"
  unfolding BC_value_def
  sorry
end