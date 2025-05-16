theory OI_perp_AI_theorem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

locale triangle =
  fixes A B C :: "complex"
  assumes non_collinear: "A ≠ B ∧ B ≠ C ∧ A ≠ C ∧ Im((B - A) * cnj(C - A)) ≠ 0"

context triangle begin

definition circumcenter :: "complex" where
  "circumcenter = 
    let 
      a = norm(B - C)^2;
      b = norm(C - A)^2;
      c = norm(A - B)^2;
      factor = 1 / (a * (b + c - a) + b * c);
      wA = a * (b + c - a);
      wB = b * (c + a - b);
      wC = c * (a + b - c)
    in
      factor * (wA * A + wB * B + wC * C)"

definition incenter :: "complex" where
  "incenter = 
    let 
      a = norm(B - C);
      b = norm(C - A);
      c = norm(A - B)
    in
      (a * A + b * B + c * C) / (a + b + c)"

lemma perp_vectors_inner_prod:
  "x ⊥ y ⟷ Re(x * cnj(y)) = 0" for x y :: "complex"
  by (simp add: complex_inner_eq_complex_cone complex_is_real_def inner_eq_zero_iff)

theorem OI_perp_AI_implies_side_sum:
  assumes "O = circumcenter"
  and "I = incenter"
  and "Re((O - I) * cnj(A - I)) = 0" (* perpendicular condition *)
  shows "norm(A - B) + norm(A - C) = 2 * norm(B - C)"
  sorry

end
end