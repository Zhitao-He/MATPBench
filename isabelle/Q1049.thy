theory TriangleOrthocenterMidpoint
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vadd :: "point ⇒ point ⇒ point" (infixl "⊕" 65) where
  "p1 ⊕ p2 = (fst p1 + fst p2, snd p1 + snd p2)"
definition vscale :: "real ⇒ point ⇒ point" (infixl "⊗" 75) where
  "a ⊗ p = (a * fst p, a * snd p)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = (1/2) ⊗ (A ⊕ B)"
definition dot_product :: "point ⇒ point ⇒ real" (infixl "⋅" 70) where
  "v1 ⋅ v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition vsub :: "point ⇒ point ⇒ point" (infixl "⊖" 65) where
  "p1 ⊖ p2 = (fst p1 - fst p2, snd p1 - snd p2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. C = A ⊕ t ⊗ (B ⊖ A))"
definition foot :: "point ⇒ point ⇒ point ⇒ point" where
  "foot P A B = A ⊕ ((P ⊖ A) ⋅ (B ⊖ A) / ((B ⊖ A) ⋅ (B ⊖ A))) ⊗ (B ⊖ A)"
definition orthocenter :: "point ⇒ point ⇒ point ⇒ point" where
  "orthocenter A B C = (
    let 
      D = foot A B C;
      E = foot B A C;
      F = foot C A B
    in
      foot A D (E ⊖ F)
  )"
definition line_through :: "point ⇒ point ⇒ point set" where
  "line_through A B = {A ⊕ t ⊗ (B ⊖ A) | t. True}"
definition perpendicular_line_through :: "point ⇒ point set ⇒ point set" where
  "perpendicular_line_through P L = (
    let dir = SOME v. (∃A B. A ∈ L ∧ B ∈ L ∧ A ≠ B ∧ v = B ⊖ A);
        perp_dir = (- snd dir, fst dir)
    in {P ⊕ t ⊗ perp_dir | t. True}
  )"
definition intersection_point :: "point set ⇒ point set ⇒ point" where
  "intersection_point L1 L2 = (
    SOME P. P ∈ L1 ∧ P ∈ L2
  )"
locale triangle_orthocenter_midpoint =
  fixes A B C :: point
  assumes A_neq_B: "A ≠ B"
  and B_neq_C: "B ≠ C"
  and C_neq_A: "C ≠ A"
  and not_collinear: "¬ collinear A B C"
begin
definition D :: point where
  "D = midpoint B C"
definition H :: point where
  "H = orthocenter A B C"
definition line_DH :: "point set" where
  "line_DH = line_through D H"
definition line_EF :: "point set" where
  "line_EF = perpendicular_line_through H line_DH"
definition E :: point where
  "E = intersection_point line_EF (line_through A B)"
definition F :: point where
  "F = intersection_point line_EF (line_through A C)"
theorem H_is_midpoint_of_EF: "H = midpoint E F"
  sorry