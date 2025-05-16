theory AngleCalculation
  imports
    Complex_Main
    "HOL-Analysis.Euclidean_Space"
begin
locale pyramid_problem =
  fixes A B C D V W :: "real^3"
  assumes dist_VA: "norm (V - A) = 23"
      and dist_BC: "norm (B - C) = 12"
      and W_on_AB: "∃z. 0 < z ∧ z < norm (B - A) ∧ 
                       W = A + z *⋅ ((B - A) /\<^sub>R norm (B - A))"
      and D_on_base: "∃α β γ. 0 < α ∧ 0 < β ∧ 0 < γ ∧ α + β + γ = 1 ∧
                           D = α *⋅ A + β *⋅ B + γ *⋅ C"
definition angle_VAW :: "real^3 ⇒ real^3 ⇒ real^3 ⇒ real" where
  "angle_VAW V A W = 
    acos (((V - A) •⋅ (W - A)) / (norm (V - A) * norm (W - A))) * (180 / pi)"
theorem angle_value:
  assumes "pyramid_problem A B C D V W"
  shows "angle_VAW V A W ≈ 68.34"
begin
  