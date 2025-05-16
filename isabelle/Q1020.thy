theory Circle_Collinearity
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
section "点、三角形与圆的共线性问题"
locale circle_collinearity =
  fixes A B C O L E F :: "real^2"
  assumes ABC_noncollinear: "¬ collinear {A, B, C}"
  and circle_def: "∀P. (dist P O = dist A O) ⟷ (P = A ∨ P = B ∨ P = C)"
  and L_on_circle: "dist L O = dist A O"
  and E_on_AB: "∃a. E = A + a *\<^sub>R (B - A) ∧ 0 ≤ a ∧ a ≤ 1"
  and E_on_perp: "∃b. E = L + b *\<^sub>R (orthogonal (L - C))"
  and F_on_AC: "∃a. F = A + a *\<^sub>R (C - A) ∧ 0 ≤ a ∧ a ≤ 1"
  and F_on_perp: "∃b. F = L + b *\<^sub>R (orthogonal (L - B))"
  definition orthogonal :: "real^2 ⇒ real^2" where
    "orthogonal v = (let (x, y) = (v$1, v$2) in vector [y, -x])"
theorem circle_points_collinear:
  "collinear {E, O, F}"