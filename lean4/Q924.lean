import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt

open Real EuclideanGeometry

section RightTriangleProblem

/-!
Given right triangle ABC with:
- AB = 10 (hypotenuse)
- AC = x (one leg)
- BC = y (other leg)
- ∠CBA = 45° (π/4 radians)
- ∠ACB = 90° (π/2 radians)
Find x.
-/

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

variable (A B C : P)

variable (h_AB : dist A B = 10)
variable (h_angle_CBA : (angle C B A).value = π / 4)
variable (h_angle_ACB : (angle A C B).value = π / 2)

theorem value_of_x : dist A C = 5 * sqrt 2 := by
  -- Proof outline:
  -- ∠CBA = 45°, ∠ACB = 90° ⇒ ∠BAC = 45° (sum π)
  -- ⇒ triangle is isosceles, AC = BC
  -- Pythagoras: AC² + BC² = AB² → 2x² = 100 → x² = 50 → x = 5 * sqrt 2
  sorry

end RightTriangleProblem