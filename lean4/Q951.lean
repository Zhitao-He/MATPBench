import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

-- Local notation for 2D Euclidean vectors and affine points
local notation "VEC" => EuclideanSpace ℝ (Fin 2)
local notation "PNT" => Point ℝ VEC

namespace TangentBisectorProblem

-- Given points in the plane
variable (O P A B C D E F : PNT)
-- Circle center and radius
variable (r : ℝ)
variable (S : Sphere O r)

-- Basic circle and tangency assumptions
variable (hr_pos : 0 < r)
variable (hA_on_S : A ∈ S)
variable (hB_on_S : B ∈ S)
variable (hC_on_S : C ∈ S)
variable (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
variable (hP_outside_S : r < dist P O)
variable (hPA_tangent : InnerProductSpace.Orthogonal ℝ (P -ᵥ A) (A -ᵥ O))
variable (hPB_tangent : InnerProductSpace.Orthogonal ℝ (P -ᵥ B) (B -ᵥ O))

-- D lies strictly between A and B on line AB
variable (hD_sbtw_AB : Sbtw ℝ A D B)
-- CD ⟂ AB at D
variable (hCD_perp_AB : InnerProductSpace.Orthogonal ℝ (C -ᵥ D) (B -ᵥ A))

-- E, F are the intersections as described, and C E F collinear (tangent at C)
variable (hCEF_collinear : Collinear ℝ ({C, E, F} : Set PNT))
variable (hE_on_PA : Collinear ℝ ({P, A, E} : Set PNT))
variable (hF_on_PB : Collinear ℝ ({P, B, F} : Set PNT))
variable (hE_ne_C : E ≠ C)
variable (hF_ne_C : F ≠ C)
-- Tangent at C is orthogonal to OC
variable (hTangent_CE_perp_OC : InnerProductSpace.Orthogonal ℝ (E -ᵥ C) (C -ᵥ O))

-- D ≠ E, D ≠ C, D ≠ F for the angles to be well-defined
variable (hD_ne_E : D ≠ E) (hD_ne_C : D ≠ C) (hD_ne_F : D ≠ F)

-- The conclusion: CD bisects angle EDF, i.e., ∠EDC = ∠CDF
theorem cd_bisects_angle_edf :
  unorientedAngle E D C = unorientedAngle C D F := by
  sorry

end TangentBisectorProblem