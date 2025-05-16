theory LengthBC
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale length_BC_theorem =
  fixes A B C D E :: "real^2"
  assumes AB: "norm (B - A) = 8"
  and AD: "norm (D - A) = 27"
  and AE: "norm (E - A) = 12"
  and parallel: "∃k. k > 0 ∧ C - D = k *⋅ (B - E)"
  and B_on_AC: "∃t. t > 0 ∧ t < 1 ∧ B = (1 - t) *⋅ A + t *⋅ C"
begin
theorem BC_length: "norm (C - B) = 10"
proof -
  have "∃k. k > 0 ∧ C - D = k *⋅ (B - E)" using parallel by auto
  have "norm (C - B) / norm (D - A) = norm (B - A) / norm (E - A)"
    using AB AD AE B_on_AC parallel
    by (metis (no_types, lifting) diff_add_cancel scaleR_diff_right)
  hence "norm (C - B) = norm (B - A) * norm (D - A) / norm (E - A)"
    by (simp add: field_simps)
  hence "norm (C - B) = 8 * 27 / 12"
    using AB AD AE by simp
  thus "norm (C - B) = 10"
    by simp
qed