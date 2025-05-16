import Mathlib.Data.Real.Basic

/-
Let s > 0 be the edge length of a cube whose surface area equals the sum of its volume and five times its edge length.
That is: 0 < s ∧ 6 * s^2 = s^3 + 5 * s.
Prove that the sum of all possible such s is 6.
-/
theorem cube_surface_area_volume_edge_sum :
    ∑ s in { s : ℝ | 0 < s ∧ 6 * s^2 = s^3 + 5 * s }, s = 6 := by sorry