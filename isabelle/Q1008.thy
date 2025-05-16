theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((px A + px B) / 2, (py A + py B) / 2)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P ⟷ (∃k. px P = px A + k * (px B - px A) ∧ 
                      py P = py A + k * (py B - py A))"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A)"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P ⟷ (px P - px O)^2 + (py P - py O)^2 = r^2"
definition tangent_at :: "point ⇒ real ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "tangent_at C r lA lB P ⟷ on_circle C r P ∧
   (∃Q. Q ≠ P ∧ on_line lA lB Q ∧
     (∀t. let T = (px P + t * (px Q - px P), py P + t * (py Q - py P)) in
       t = 0 ∨ ¬(on_circle C r T)))"
definition orthogonal :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "orthogonal A B C D ⟷ (px B - px A) * (px D - px C) + (py B - py A) * (py D - py C) = 0"
theorem geometry_FO_perp_BC:
  fixes A B C O :: point and r :: real
  assumes "¬collinear A B C"
  defines "D ≡ midpoint B C"
  assumes "on_circle O r A ∧ on_circle O r C"
  assumes "tangent_at O r D A A"
  fixes E :: point
  assumes "on_line B A E"
  assumes "on_circle O r E"
  assumes "E ≠ A"
  fixes F :: point
  assumes "on_line D A F"
  assumes "on_line C E F"
  shows "orthogonal F O B C"
  sorry