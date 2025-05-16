import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

-- We work in a 2-dimensional Euclidean affine space over ℝ
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 2)]

open EuclideanGeometry

namespace AngleBisectorCircleTheorem

-- Points in the plane
variables (A B C O D E F M N : P)

-- The circumcircle (sphere in 2D)
variable (Ω : Sphere P)

-- Hypotheses for the construction

-- A, B, C are on Ω (circumcircle); O is its center.
variable (hA_on_Ω : A ∈ Ω)
variable (hB_on_Ω : B ∈ Ω)
variable (hC_on_Ω : C ∈ Ω)
variable (hO_is_Ω_center : Ω.center = O)
-- Triangle ABC is non-collinear
variable (hABC_noncollinear : ¬ Collinear ℝ A B C)

-- D: angle bisector of ∠BAC meets Ω again at D ≠ A
variable (hD_on_Ω : D ∈ Ω) 
variable (hD_ne_A : D ≠ A)
-- The bisector property: ∠BAD = ∠DAC, with usual unoriented angle at A
variable (hAD_bisects_BAC : ∠ B A D = ∠ C A D)

-- E: midpoint of BC
variable (hE_midpoint_BC : E = midpoint ℝ B C)

-- F: EF ⟂ AD, with E ≠ F
variable (hE_ne_F : E ≠ F)
variable (hEF_perp_AD : LinePerpendicular (lineThrough E F) (lineThrough A D))

-- DF: D ≠ F
variable (hD_ne_F : D ≠ F)

-- MN: line through F ⟂ DF, meets AB at M ≠ N and AC at N
variable (hM_ne_N : M ≠ N)
variable (hF_on_line_MN : F ∈ lineThrough M N)
variable (hMN_perp_DF : LinePerpendicular (lineThrough M N) (lineThrough D F))

-- M ∈ AB, N ∈ AC
variable (hM_on_line_AB : M ∈ lineThrough A B)
variable (hN_on_line_AC : N ∈ lineThrough A C)

-- The required result: FM = FN
theorem fm_eq_fn : dist F M = dist F N := by
  sorry

end AngleBisectorCircleTheorem