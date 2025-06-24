import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def semiCircleArea (r : ℝ) : ℝ := (1 / 2) * Real.pi * (r * r)
theorem areaOfSemiCircleK (A K O C M B : Point)
    (hK_mid : K = midpoint ℝ A C)
    (hO_mid : O = midpoint ℝ A B)
    (hM_mid : M = midpoint ℝ C B)
    (hAKO : Wbtw ℝ A K O)
    (hKOC : Wbtw ℝ K O C)
    (hOCM : Wbtw ℝ O C M)
    (hCMB : Wbtw ℝ C M B)
    (hOC_dist : dist O C = 32)
    (hCB_dist : dist C B = 36)
    : semiCircleArea (dist A K) = 1250 * Real.pi :=
  by
    sorry
