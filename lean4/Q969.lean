import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

noncomputable section IncenterTangentCircles

open scoped RealInnerProductSpace

-- Let P be a 2-dimensional Euclidean affine space, modeled on V
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [Fact (finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Triangle points A, B, C (non-collinear)
variable (A B C : P)
variable (h_indep : AffineIndependent ℝ ![A, B, C])

-- Incenter I of triangle ABC (using a placeholder since Mathlib4 may not have incenter)
variable (I : P)
variable (hI_incenter : True) -- Placeholder for incenter property

-- Circle P tangent to AB and AC, centered at P₀, radius rP > 0
variable (P₀ : P) (rP : ℝ)
variable (hrP_pos : 0 < rP)
-- Tangency to lines AB and AC: dist from center to line equals rP
variable (hP_tangent_AB : dist P₀ (EuclideanGeometry.orthogonalProjection (AffineSubspace.line ℝ A B) P₀) = rP)
variable (hP_tangent_AC : dist P₀ (EuclideanGeometry.orthogonalProjection (AffineSubspace.line ℝ A C) P₀) = rP)

-- To be inside angle BAC, center must be on same side as C (for AB) and as B (for AC)
variable (hP_side_C : EuclideanGeometry.SameSide (AffineSubspace.line ℝ A B) P₀ C)
variable (hP_side_B : EuclideanGeometry.SameSide (AffineSubspace.line ℝ A C) P₀ B)

-- Circle O passes through B and C, centered at O₀, radius rO > 0
variable (O₀ : P) (rO : ℝ)
variable (hrO_pos : 0 < rO)
variable (hO_passes_B : dist B O₀ = rO)
variable (hO_passes_C : dist C O₀ = rO)

-- Point K: circles P and O are externally tangent at K
variable (K : P)
variable (hK_on_P : dist K P₀ = rP)
variable (hK_on_O : dist K O₀ = rO)
variable (h_centers_dist : dist P₀ O₀ = rP + rO)

-- Angle well-definedness conditions
variable (hK_ne_B : K ≠ B)
variable (hK_ne_C : K ≠ C)
variable (hK_ne_I : K ≠ I)

-- Theorem: KI bisects angle BKC, i.e., ∠BKI = ∠IKC (unoriented angles)
theorem incenter_bisects_bkc :
    Angle.Unoriented.angle B K I = Angle.Unoriented.angle I K C := by
  sorry

end IncenterTangentCircles