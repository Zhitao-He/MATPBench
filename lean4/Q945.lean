import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Circumcenter

namespace PutnamGeometryProblem

open Real InnerProductSpace EuclideanGeometry

-- 2D Euclidean space of points over ℝ
variable {PPoint : Type*} [NormedAddCommGroup PPoint] [InnerProductSpace ℝ PPoint]
variable [FiniteDimensional ℝ PPoint] [fact_dim : Fact (finrank ℝ PPoint = 2)]

-- Declare points
variable (A B O C P D E F K : PPoint)

-- AB is diameter of circle O
variable (hA_ne_B : A ≠ B)
variable (hO_mid_AB : O = midpoint ℝ A B)

-- C lies on the circle O
variable (hC_on_circ : C ∈ Metric.sphere O (dist A O))

-- P lies on the extension of AB with B between A and P
variable (hP_col_AB : Collinear ℝ ({A, B, P} : Set PPoint))
variable (hB_sbtw_AP : Sbtw ℝ A B P)

-- PC is tangent to circle O at C
variable (hC_ne_P : C ≠ P)
variable (hOC_perp_PC : inner (O -ᵥ C) (P -ᵥ C) = 0)

-- D is the reflection of C about AB
def reflectionAcrossLine (p1 p2 pt : PPoint) : PPoint :=
  let ℓ := affineLine ℝ p1 p2
  pt +ᵥ (2 • (orthogonalProjection ℓ pt -ᵥ pt))

variable (hD_refl : D = reflectionAcrossLine A B C)

-- CE ⟂ AD at E
variable (hA_ne_D : A ≠ D)
variable (hE_proj : E = orthogonalProjection (affineLine ℝ A D) C)

-- F is midpoint of CE
variable (hF_mid : F = midpoint ℝ C E)

-- AF intersects circle O again at K (K ≠ A)
variable (hA_ne_F : A ≠ F)
variable (hK_on_circle : K ∈ Metric.sphere O (dist A O))
variable (hK_on_AF : Collinear ℝ ({A, F, K} : Set PPoint))
variable (hK_ne_A : K ≠ A)

-- P, C, K not collinear
variable (hP_C_K_not_coll : ¬Collinear ℝ ({P, C, K} : Set PPoint))

-- Main theorem: AP is tangent to circumcircle of triangle PCK at P
theorem AP_tangent_to_circumcircle_PCK :
  let Ocirc := circumcenter P C K hP_C_K_not_coll
  inner (Ocirc -ᵥ P) (A -ᵥ P) = 0 := by
  sorry

end PutnamGeometryProblem