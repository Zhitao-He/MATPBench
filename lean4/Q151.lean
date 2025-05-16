import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

/-!
# Thales's Theorem (Inscribed Angle in a Semicircle)

Given a circle with center `O` and a diameter `AC`,
if `B` is a point on the circle different from `A` and `C`,
then the angle `∠ABC` is a right angle (π / 2 radians).

This theorem formalizes (in Lean 4) that any angle inscribed in a semicircle is a right angle.
-/

namespace InscribedAngleSemicircle

open Real EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/--
**Thales's Theorem**: Let `O A B C : P` be points in a Euclidean affine space over `ℝ`.
Suppose the circle of radius `r` centered at `O` passes through `A`, `B`, and `C`,
`AC` is a diameter (i.e., `O` is the midpoint of `A` and `C`), and `B ≠ A`, `B ≠ C`.
Then the angle `∠ A B C` is `π / 2`.
-/
theorem angle_in_semicircle_is_right_angle
    (O A B C : P) (r : ℝ)
    (hr_pos : 0 < r)
    (hA_on_circle : dist A O = r)
    (hB_on_circle : dist B O = r)
    (hC_on_circle : dist C O = r)
    (hAC_is_diameter : O = midpoint ℝ A C)
    (hB_ne_A : B ≠ A) (hB_ne_C : B ≠ C) :
    ∠ A B C = π / 2 := by
  sorry

end InscribedAngleSemicircle