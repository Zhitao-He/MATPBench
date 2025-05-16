import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle -- for Triangle.area
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic -- for angle definition
import Mathlib.Data.Real.Basic -- for ℝ, π, /

open EuclideanGeometry
open Real

/--
Define `Point` as a point in the Euclidean plane ℝ²
-/
abbreviation Point := EuclideanSpace ℝ (Fin 2)

/--
Definition of a rectangle by vertices A, B, C, D (in order).
- A rectangle is a parallelogram with one right angle.
- Parallelogram = diagonals bisect: A + C = B + D.
- Non-degenerate: sides have positive length.
-/
structure IsRectangle (A B C D : Point) : Prop where
  diag_midpoints_coincide : A + C = B + D
  angle_ABC_is_right : angle A B C = π / 2
  A_ne_B : A ≠ B
  B_ne_C : B ≠ C

/--
Area of a rectangle (A, B, C, D). Uses `IsRectangle` for assumptions.
-/
def areaOfRectangle (A B C D : Point) (h_rect : IsRectangle A B C D) : ℝ :=
  dist A B * dist B C

/--
Area of a general quadrilateral PQRS by splitting into triangles.
-/
def areaOfQuadrilateral (P Q R S : Point) : ℝ :=
  Triangle.area P Q R + Triangle.area R S P

/--
**The geometry lemma**:
Let ABCD be a rectangle with area 10,
M = midpoint of AD,
N = midpoint of BC.
Then the area of quadrilateral MBND is 5.
-/
theorem rectangle_midpoint_quadrilateral_area_is_five :
  ∀ (A B C D : Point),
  IsRectangle A B C D →
  let M := midpoint ℝ A D
  let N := midpoint ℝ B C
  areaOfRectangle A B C D (by assumption) = 10 →
  areaOfQuadrilateral M B N D = 5 :=
by
  sorry  -- Proof not required