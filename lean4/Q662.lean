import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open EuclideanGeometry

-- Setup for the euclidean plane
variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

-- Helper function: degrees to radians
noncomputable def deg_to_rad (deg : ℝ) : ℝ := deg / 180 * Real.pi

-- Points in the figure
variable (A B C D E F J : P)

section ProblemSetup

-- Non-collinear distinct triangle
variable (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hB_ne_C : B ≠ C)
variable (hABC_noncollinear : ¬ Collinear ℝ A B C)

-- Lengths: AE = 12, AJ = 15
variable (h_AE : dist A E = 12)
variable (h_AJ : dist A J = 15)

-- Angles
variable (h_angle_JBE : ∠ J B E = deg_to_rad 34)
variable (h_angle_JCD : ∠ J C D = deg_to_rad 32)

-- J is the incenter of triangle ABC
variable (h_J_incenter : IsIncenter ℝ A B C J)

-- Perpendicularities
variable (h_AF_perp_JF : ∠ J F A = Real.pi / 2)
variable (h_CD_perp_JD : ∠ C D J = Real.pi / 2)
variable (h_JE_perp_AE : ∠ J E A = Real.pi / 2)

-- Points on lines
variable (h_E_on_AB : E ∈ line[ℝ, A, B])
variable (h_D_on_BC : D ∈ line[ℝ, B, C])
variable (h_F_on_AC : F ∈ line[ℝ, A, C])

-- The goal: ∠ J A C = 24°
theorem angle_JAC_24_degrees :
    ∠ J A C = deg_to_rad 24 := by
  sorry

end ProblemSetup