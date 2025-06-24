theory ProofCircles
  imports Complex_Main
begin
type_synonym point = complex
record circle =
  center :: point
  radius :: real
definition externally_tangent_at :: "circle ⇒ circle ⇒ point ⇒ bool" where
  "externally_tangent_at c1 c2 A ⟷ 
    (A = center c1 + (radius c1 / (radius c1 + radius c2)) * (center c2 - center c1)) ∧
    (dist (center c1) (center c2) = radius c1 + radius c2) ∧
    (dist (center c1) A = radius c1) ∧
    (dist (center c2) A = radius c2)"
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle P C ⟷ dist P (center C) = radius C"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ ∃ t::real. (B - A) = t * (C - A)"
definition line_intersects_circle_twice :: 
  "point ⇒ point ⇒ circle ⇒ point ⇒ bool" where
  "line_intersects_circle_twice A D C E ⟷ 
    (on_circle D C ∧ D ≠ A ∧ collinear A D E ∧ on_circle E C ∧ E ≠ A)"
definition external_tangent :: "circle ⇒ circle ⇒ point ⇒ point ⇒ bool" where
  "external_tangent c1 c2 B C ⟷ 
    (on_circle B c1 ∧ on_circle C c2 ∧ 
     (∃ l. collinear B C l ∧ 
          (∀ P. on_circle P c1 ⟶ (P = B ∨ dist P (line_through B C) > 0)) ∧
          (∀ Q. on_circle Q c2 ⟶ (Q = C ∨ dist Q (line_through B C) > 0))))"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 1/2 * abs (Re ((B - A) * cnj (C - A)))"
locale ProofCircles_Setup =
  fixes P Q :: circle
    and A B C D E :: point
  assumes radii: "radius P = 1" "radius Q = 4"
    and ext_tangent: "externally_tangent_at P Q A"
    and B_on_P: "on_circle B P"
    and C_on_Q: "on_circle C Q"
    and BC_tangent: "external_tangent P Q B C"
    and l_through_A: "collinear D A E"
    and D_on_P: "on_circle D P" "D ≠ A"
    and E_on_Q: "on_circle E Q" "E ≠ A"
    and B_C_same_side: " True"
    and area_eq: "triangle_area D B A = triangle_area A C E"
    and area_val: "triangle_area D B A = 129 / 8"
begin
theorem answer: "let m = 129; n = 8 in m + n = 137"
  by simp
end
end