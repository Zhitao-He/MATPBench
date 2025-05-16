theory Angle_MDF_eq_NDE
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
section "Triangle with Perpendicular Lines and Angle Equality"
locale triangle_with_perpendicular_lines =
  fixes A B C O :: "real^2"
    and circO :: "real^2 set"
  assumes non_collinear_ABC: "det2 (B - A) (C - A) ≠ 0"
    and circO_def: "circO = {x. dist x O = dist A O}"
    and A_on_circO: "A ∈ circO"
    and B_on_circO: "B ∈ circO"
    and C_on_circO: "C ∈ circO"
begin
definition line :: "real^2 ⇒ real^2 ⇒ real^2 set" where
  "line P Q = {P + t *\<^sub>R (Q - P) | t. t ∈ UNIV}"
definition collinear :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "collinear P Q R ⟷ det2 (Q - P) (R - P) = 0"
definition midpoint :: "real^2 ⇒ real^2 ⇒ real^2" where
  "midpoint P Q = (P + Q) /\<^sub>R 2"
definition perpendicular :: "real^2 set ⇒ real^2 set ⇒ bool" where
  "perpendicular l₁ l₂ ⟷ (∃p q r s. p ≠ q ∧ r ≠ s ∧ l₁ = line p q ∧ l₂ = line r s ∧ 
    (q - p) ∙ (s - r) = 0)"
definition parallel :: "real^2 set ⇒ real^2 set ⇒ bool" where
  "parallel l₁ l₂ ⟷ (∃p q r s. p ≠ q ∧ r ≠ s ∧ l₁ = line p q ∧ l₂ = line r s ∧ 
    det2 (q - p) (s - r) = 0 ∧ l₁ ≠ l₂)"
definition on :: "real^2 ⇒ real^2 set ⇒ bool" where
  "on P l ⟷ P ∈ l"
definition intersection_point :: "real^2 set ⇒ real^2 set ⇒ real^2 ⇒ bool" where
  "intersection_point l₁ l₂ P ⟷ on P l₁ ∧ on P l₂"
definition vector_angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "vector_angle P Q R = angle ((Q - P) ∙ (R - P)) (det2 (Q - P) (R - P))"
lemma "∃E F H D L M N.
  on E (line A C) ∧
  on F (line A B) ∧
  perpendicular (line B E) (line A C) ∧
  perpendicular (line C F) (line A B) ∧
  intersection_point (line B E) (line C F) H ∧
  (on D circO ∧ D ≠ A ∧ collinear A H D) ∧
  midpoint L A H = L ∧
  on L (line M N) ∧
  parallel (line M N) (line E F) ∧
  on M (line A B) ∧
  on N (line A C) ⟹
  vector_angle M D F = vector_angle N D E"
  sorry