import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

variable (A B C : EuclideanPlane)

-- Side lengths
variable (h_a : dist B C = 14)
variable (h_b : dist A C = 48)
variable (h_c : dist A B = 50)

-- Right angle at C
variable (h_right_angle : ∠ A C B = Real.pi / 2)

-- Non-collinearity
variable (h_noncollinear : ¬ Collinear ℝ A B C)

theorem cos_angle_ABC_value : Real.cos (∠ A B C) = (7 : ℝ) / 25 := by
  sorry