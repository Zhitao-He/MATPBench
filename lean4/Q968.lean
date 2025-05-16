import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle -- for orthocenter
import Mathlib.Geometry.Euclidean.Projection -- for orthogonalProjection
import Mathlib.Geometry.Euclidean.Sphere.Basic -- for Cospherical

open EuclideanGeometry

namespace GeometryProblem

-- Let V be a 2-dimensional real inner product space, and P an affine space over V.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P] [Fact (FiniteDimensional.finrank ℝ V = 2)]

-- Let A, B, C : P be triangle vertices.
variable {A B C H D E : P}

-- A, B, C are non-collinear.
variable (h_triangle : AffineIndependent ℝ ![A, B, C])
-- H is the orthocenter.
variable (h_orthocenter : H = orthocenter ℝ (A := A) (B := B) (C := C))
-- D is the midpoint of segment CH.
variable (h_midpt : D = midpoint ℝ C H)
-- E is the foot of the perpendicular from B to the line AD.
variable (h_proj : E = orthogonalProjection (affineSpan ℝ {A, D}) B)

-- The points B, C, E, H are concyclic.
theorem BCEH_concyclic : Cospherical ({B, C, E, H} : Set P) := by
  sorry

end GeometryProblem