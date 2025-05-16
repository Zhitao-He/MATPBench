theory Geometry_Theorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral_theorem =
  fixes A B C D :: "real^2"
  assumes AB_eq_AC: "dist A B = dist A C"
  fixes O₁ O₂ :: "real^2"
  assumes O₁_circum_ABD: "dist O₁ A = dist O₁ B" "dist O₁ A = dist O₁ D"
  assumes O₂_circum_ACD: "dist O₂ A = dist O₂ C" "dist O₂ A = dist O₂ D"
  fixes F :: "real^2"
  assumes F_on_AC: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ F = (1 - t) *⇘ A + t *⇘ C"
  assumes F_on_circum_ABD: "dist O₁ F = dist O₁ A"
  assumes F_neq_A: "F ≠ A"
  assumes F_neq_C: "F ≠ C"
  fixes E :: "real^2"
  assumes E_on_AB: "∃s. 0 ≤ s ∧ s ≤ 1 ∧ E = (1 - s) *⇘ A + s *⇘ B"
  assumes E_on_circum_ACD: "dist O₂ E = dist O₂ A"
  assumes E_neq_A: "E ≠ A"
  assumes E_neq_B: "E ≠ B"
  fixes G :: "real^2"
  assumes G_on_BF: "∃u. G = (1 - u) *⇘ B + u *⇘ F"
  assumes G_on_CE: "∃v. G = (1 - v) *⇘ C + v *⇘ E"
  theorem BG_CG_ratio: "dist B G / dist C G = dist B D / dist C D"
  sorry