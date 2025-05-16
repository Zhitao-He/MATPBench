import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

/-!
# Intersecting Chords Theorem

Given a circle with center A and points B, C, D, E on the circle.
Chords BE and CD intersect at point F with lengths:
- FB = 9
- FC = 6
- FD = 6
- FE = x

We need to find the value of x (which is 4 by the intersecting chords theorem).
-/

section IntersectingChords

variable {P : Type*} [MetricSpace P] [NormedAddCommGroup P] [InnerProductSpace ℝ P]

variable (A B C D E F : P)
variable (x : ℝ)

-- Circle centered at A with points B, C, D, E on it
variable (S : Sphere P)
hypothesis hS : S = Sphere.mk A (dist A B)
hypothesis hB : B ∈ S
hypothesis hC : C ∈ S
hypothesis hD : D ∈ S
hypothesis hE : E ∈ S

-- Intersection point F is on both chords
hypothesis hF_BE : F ∈ segment ℝ B E
hypothesis hF_CD : F ∈ segment ℝ C D

-- Given lengths
hypothesis hFB : dist F B = 9
hypothesis hFC : dist F C = 6
hypothesis hFD : dist F D = 6
hypothesis hFE : dist F E = x

/--
By the intersecting chords theorem: FE * FB = FC * FD
Therefore x * 9 = 6 * 6 ⇒ x = 4
-/
theorem x_eq_4 : x = 4 := by sorry

end IntersectingChords