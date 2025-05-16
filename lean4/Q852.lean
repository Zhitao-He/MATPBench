import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

namespace ProblemDescription

noncomputable section

open Real
open EuclideanGeometry

-- 给定欧几里得平面上的三个点
variable {P : Type*} [EuclideanPlane P]
variable (A B C : P)

-- A, B, C 为不同的三点
axiom h_distinct_points : A ≠ B ∧ B ≠ C ∧ C ≠ A

-- ∠ACB = 90°
axiom h_angle_C_is_right : ∠ A C B = π / 2

-- ∠CAB = 30°
axiom h_angle_A_is_30 : ∠ C A B = π / 6

-- BC = 21
axiom h_BC_length : dist B C = 21

-- 设 y = |AC|
def y (A C : P) : ℝ := dist A C

-- 目标: y = 21 * sqrt 3
theorem value_of_y_eq_21_sqrt_3 (A B C : P) [EuclideanPlane P]
    (h1 : A ≠ B ∧ B ≠ C ∧ C ≠ A)
    (h2 : ∠ A C B = π / 2)
    (h3 : ∠ C A B = π / 6)
    (h4 : dist B C = 21) : 
    y A C = 21 * sqrt 3 := by
  sorry

end ProblemDescription