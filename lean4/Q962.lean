import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

open Real EuclideanSpace InnerProductSpace Angle -- For `∠`, `dist`, etc.

namespace InscribedQuadrilateralSymmetry

-- Setup: V is a finite-dimensional real inner product space, P is the corresponding affine space.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Let O be the center and r > 0 the radius of the circle (sphere in general).
variable {O : P} {r : ℝ}
variable {A B C D E F G : P}

variable (hr : 0 < r)

-- A, B, C, D, F, G lie on the circle centered at O with radius r.
variable (hA : A ∈ Metric.sphere O r)
variable (hB : B ∈ Metric.sphere O r)
variable (hC : C ∈ Metric.sphere O r)
variable (hD : D ∈ Metric.sphere O r)
variable (hF : F ∈ Metric.sphere O r)
variable (hG : G ∈ Metric.sphere O r)

-- All vertices of ABCD are distinct; diagonals do not meet at a vertex
variable (hAB : A ≠ B)
variable (hBC : B ≠ C)
variable (hCD : C ≠ D)
variable (hDA : D ≠ A)
variable (hAC : A ≠ C)
variable (hBD : B ≠ D)

-- E is inside the (convex hull of) quadrilateral; and not equal to any vertex
variable (hE_inside : E ∈ interior (convexHull ℝ {A, B, C, D}))
variable (hEA : E ≠ A)
variable (hEB : E ≠ B)
variable (hEC : E ≠ C)
variable (hED : E ≠ D)

-- Angle conditions
variable (h_angle1 : ∠ E A B = ∠ E C D)
variable (h_angle2 : ∠ E B A = ∠ E D C)

-- B, E, C are not collinear (so angle BEC is defined)
variable (h_BEC : ¬ Collinear ℝ ({B, E, C} : Set P))

-- F, E, G are collinear and E is strictly between F and G
variable (h_sbtw : Sbtw ℝ F E G)

-- The line FG through E bisects angle BEC:
-- that is, EF is along the angle bisector of ∠BEC, so ∠BEF = ∠CEF
variable (h_bisect : ∠ B E F = ∠ C E F)

-- Theorem: EF = EG
theorem dist_EF_eq_EG
    [Nonempty P]
    : dist E F = dist E G :=
  by
    sorry

end InscribedQuadrilateralSymmetry