import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

/-!
# Problem Statement

In triangle ABC, AD bisects angle BAC and meets BC at D.
Let E be the midpoint of AD.
Points M and N lie on BE and CE respectively,
such that ∠AMC = ∠ANB = 90°.
Prove that ∠MBN = ∠MCN.
-/

open EuclideanGeometry

section PutnamGeometryProblem

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P] 
variable (h_dim : FiniteDimensional.finrank ℝ P = 2)

-- Points in the plane
variable (A B C D E M N : P)

-- Hypotheses
variable (hABC_noncollinear : ¬ Collinear ℝ A B C)
variable (hD_on_BC : D ∈ segment ℝ B C)
variable (h_angle_bisect : ∠ B A D = ∠ D A C)
variable (hE_mid_AD : E = midpoint ℝ A D)
variable (hM_on_BE : M ∈ segment ℝ B E)
variable (hN_on_CE : N ∈ segment ℝ C E)
variable (h_angle_AMC : ∠ A M C = .pi / 2)
variable (h_angle_ANB : ∠ A N B = .pi / 2)

-- Main statement
theorem angle_MBN_eq_MCN :
    ∠ M B N = ∠ M C N := by sorry

end PutnamGeometryProblem