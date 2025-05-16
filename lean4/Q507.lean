import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real

namespace ArcLengthProblem

/-!
### Problem Setup:

Given:  
- Circle with center `O`
- Points `A` and `B` on the circle, with `OA = 3`
- ∠AOB = 45°
- Find the length of the minor arc ⌒OBA.
-/

-- The circle's radius
def radius : ℝ := 3

-- Central angle in radians: 45° = π/4
def centralAngle : ℝ := π / 4

-- Euclidean space setup
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points O (center), A, B on the circle
variable (O A B : P)

-- Geometric configuration
structure Geometry where
  dist_AO : dist A O = radius
  dist_BO : dist B O = radius
  angle_AOB : ∠ A O B = centralAngle
  A_ne_O : A ≠ O
  B_ne_O : B ≠ O

variable (geom : Geometry O A B)

-- Arc length formula
def arcLength : ℝ := radius * centralAngle

-- The required arc length is 3π/4
theorem arc_length_value : arcLength = 3 * π / 4 := by
  unfold arcLength centralAngle radius
  ring

end ArcLengthProblem