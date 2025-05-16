theory Inscribed_Quad_Reflection_Theorem
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the figure, quadrilateral ABCD is inscribed in circle O with AC as the diameter.
Let E be the reflection of D about AC, and F be the reflection of C about BD.
AF intersects BD at G, and BE meets AC at K.
Prove that KG is perpendicular to BG.›
locale inscribed_quad_reflection =
  fixes A B C D O :: "real^2"
  assumes circle: "dist A O = dist B O" "dist B O = dist C O" "dist C O = dist D O" "dist D O > 0"
      and distinct: "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A" "A ≠ C" "B ≠ D"
      and diameter: "O = (A + C) / 2"
context inscribed_quad_reflection
begin
definition reflection_over_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2" where
  "reflection_over_line P Q R = 
   let v = Q - P in
   let proj = P + ((R - P) • v / (v • v)) *⇩R v in
   2 *⇩R proj - R"
definition on_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "on_line P Q R ⟷ (∃k. R = P + k *⇩R (Q - P))"
definition lines_intersection :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2" where
  "lines_intersection P1 P2 Q1 Q2 = 
   let v1 = P2 - P1 in
   let v2 = Q2 - Q1 in
   let det = v1 $ 1 * v2 $ 2 - v1 $ 2 * v2 $ 1 in
   let t = ((Q1 - P1) $ 1 * v2 $ 2 - (Q1 - P1) $ 2 * v2 $ 1) / det in
   P1 + t *⇩R v1"
definition E :: "real^2" where "E = reflection_over_line A C D"
definition F :: "real^2" where "F = reflection_over_line B D C"
definition G :: "real^2" where "G = lines_intersection A F B D"
definition K :: "real^2" where "K = lines_intersection B E A C"
theorem kg_perp_bg: "(K - G) • (B - G) = 0"
  sorry