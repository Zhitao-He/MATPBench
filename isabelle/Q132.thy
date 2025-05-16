theory ParallelogramADEF
imports Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_ABC =
  fixes A B C :: "real^2"
  assumes distinct_A_B: "A ≠ B"
  and distinct_A_C: "A ≠ C"  
  and distinct_B_C: "B ≠ C"
  and isosceles: "dist A B = 28" "dist A C = 28"
  and base_length: "dist B C = 20"
context triangle_ABC
begin
definition "is_on_segment P Q R ≡ ∃t. 0 < t ∧ t < 1 ∧ R = (1 - t) *⇘R P + t *⇘R Q"
lemma "∃D E F.
  is_on_segment A B D ∧
  is_on_segment B C E ∧
  is_on_segment A C F ∧
  (∃k1. E - D = k1 *⇘R (C - A)) ∧
  (∃k2. F - E = k2 *⇘R (B - A)) ∧
  dist A D + dist D E + dist E F + dist F A = 56"