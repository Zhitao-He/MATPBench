import Mathlib.Data.Real.Basic
theorem transversal_parallel_angles_find_x
  (x y z : ℝ)
  (h_x_nonneg : 0 ≤ x)
  (h_y_nonneg : 0 ≤ y)
  (h_z_nonneg : 0 ≤ z)
  (h_eq1 : 2 * y + 8 = z)
  (h_eq2 : 142 + z = 180)
  (h_eq3 : 4 * x + 6 = 2 * y + 8)
  : x = 34 := by sorry