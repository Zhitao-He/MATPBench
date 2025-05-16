import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.NormedSpace.AddTorsor

namespace InscribedQuadProblem

open scoped EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] 
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A B C D E F G O : P)
variable (R : ℝ) (hR : 0 < R)

-- Points on the circle
variable (hA : A ∈ Sphere O R)
variable (hB : B ∈ Sphere O R)
variable (hC : C ∈ Sphere O R)
variable (hD : D ∈ Sphere O R)

-- E is inside quadrilateral ABCD (placeholder)
variable (hE_inside : Prop)

-- Angle conditions
variable (hEAB_ECD : ∠ E A B = ∠ E C D)
variable (hEBA_EDC : ∠ E B A = ∠ E D C)

-- Collinearity and betweenness
variable (h_collinear : Collinear ℝ ({F, E, G} : Set P))
variable (hF_neq_G : F ≠ G) (hF_neq_E : F ≠ E) (hG_neq_E : G ≠ E)
variable (h_between : Sbtw ℝ F E G)

-- Angle bisector condition
variable (hE_ne_B : E ≠ B) (hE_ne_C : E ≠ C)
variable (h_bisect : IsAngleBisector (affineSpan ℝ ({F, G} : Set P)) E B C)

-- F and G on the circle
variable (hF : F ∈ Sphere O R)
variable (hG : G ∈ Sphere O R)

-- Main theorem
theorem eq_dist_EF_EG : dist E F = dist E G := by
  sorry

end InscribedQuadProblem