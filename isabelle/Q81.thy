theory TwoCirclesEqualChords
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale two_circles_equal_chords =
  fixes O1 O2 :: "real^2"
  fixes r1 r2 :: real
  assumes centers_distance: "norm (O1 - O2) = 12"
  assumes radius1: "r1 = 6"
  assumes radius2: "r2 = 8"
begin
definition on_circle :: "real^2 ⇒ real^2 ⇒ real ⇒ bool" where
  "on_circle O P r ≡ norm (P - O) = r"
definition colinear :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "colinear A B C ≡ ∃t. (C - A) = t *⇩R (B - A) ∨ (B - A) = t *⇩R (C - A)"
theorem two_intersecting_circles_equal_chords:
  "∃Q P R. 
    on_circle O1 Q r1 ∧ on_circle O1 P r1 ∧ 
    on_circle O2 P r2 ∧ on_circle O2 R r2 ∧
    colinear Q P R ∧ Q ≠ P ∧ R ≠ P ∧
    norm (Q - P) = norm (P - R) ∧ 
    (norm (Q - P))^2 = 130"
  sorry