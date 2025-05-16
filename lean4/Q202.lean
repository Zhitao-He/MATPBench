import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection

open EuclideanGeometry Real

variable {P : Type*} [EuclideanSpace ℝ P 2]

/--
Let ω be a circle with center O and radius 5/2. 
Points A and B are endpoints of a diameter, with O as midpoint.
D is a point on the circle distinct from A and B.
C is the midpoint of arc BD (not containing A).
E is the foot of the perpendicular from C to line AD.
Prove: dist C E = 12 / 5.
-/
theorem circle_arc_midpoint_perpendicular_length
    (A B C D O : P)
    (hA_on_circle : dist A O = 5/2)
    (hB_on_circle : dist B O = 5/2)
    (hC_on_circle : dist C O = 5/2)
    (hD_on_circle : dist D O = 5/2)
    (hO_mid_AB : O = midpoint ℝ A B)
    (hA_ne_B : A ≠ B)
    (hB_ne_D : B ≠ D)
    (hC_ne_B : C ≠ B)
    (hC_ne_D : C ≠ D)
    (hC_mid_arc_BD : ∠ B O C = ∠ D O C ∧ (∀ X, X ∈ ({B, D, C} : Set P) → X ≠ A))
    (hA_ne_D : A ≠ D)
    (hA_ne_C : A ≠ C) :
    let E := orthogonalProjection (affineSpan ℝ ({A, D} : Set P)) C
    dist C E = 12 / 5 := by sorry