theory SquareDiagonalProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale square_diagonal_problem =
  fixes W X Y Z :: "real^2"
  assumes square: "is_square W X Y Z"
  and diagonal_length: "norm (W - Y) = 12"
  and A_def: "A = (W + X) / 2"
  and AB_perp_AC: "(B - A) ⊥ (C - A)"
  and AB_eq_AC: "norm (B - A) = norm (C - A)"
  and BC_length: "norm (B - C) = 18"
where
  is_square W X Y Z ≡ norm (X - W) = norm (Y - X) ∧
                    norm (Y - X) = norm (Z - Y) ∧
                    norm (Z - Y) = norm (W - Z) ∧
                    (X - W) ⊥ (Y - X) ∧
                    (Y - X) ⊥ (Z - Y) ∧
                    (Z - Y) ⊥ (W - Z) ∧
                    (W - Z) ⊥ (X - W)
theorem square_diagonal_midpt_perp_eq:
  assumes "is_square W X Y Z"
  and "norm (W - Y) = 12"
  and "A = (W + X) / 2"
  and "(B - A) ⊥ (C - A)"
  and "norm (B - A) = norm (C - A)"
  shows "norm (B - C) = 18"
  