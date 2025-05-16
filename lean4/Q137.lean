import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

open Real EuclideanGeometry

-- The Euclidean plane, 2D over ℝ
local notation "P" => EuclideanSpace ℝ (Fin 2)

/--
Two segments AB and CD are parallel if the lines through them are parallel.
-/
def segmentsParallel (A B C D : P) : Prop :=
  IsParallel (lineThrough ℝ A B) (lineThrough ℝ C D)

/--
Structure for a trapezoid ABCD with bases AB and CD.
Notes:
- AB and CD are parallel (the two bases)
- AD and BC are not parallel (not a parallelogram)
-/
structure IsTrapezoidWithBasesAB_CD (A B C D : P) : Prop where
  bases_parallel : segmentsParallel A B C D
  sides_not_parallel : ¬ segmentsParallel A D B C

/--
Area of a convex quadrilateral ABCD equals the sum of the areas of triangles ABD and BCD.
Area is handled in absolute value by Triangle.area.
-/
noncomputable def quadrilateralArea (A B C D : P) : ℝ :=
  let t1 := Triangle.mk A B D
  let t2 := Triangle.mk B C D
  Triangle.area t1 + Triangle.area t2

/--
Main result: If ABCD is a trapezoid with bases AB = 52 and CD = 39, legs BC = 12 and DA = 5,
then its area is 210.
-/
theorem area_trapezoid_given_sides :
    ∀ (A B C D : P),
      IsTrapezoidWithBasesAB_CD A B C D →
      dist A B = 52 →
      dist B C = 12 →
      dist C D = 39 →
      dist D A = 5 →
      quadrilateralArea A B C D = 210 := by
  sorry