import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint

namespace ProblemFormalization

open EuclideanSpace

-- We work in a real Euclidean affine space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [Module ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Declare points in the affine Euclidean space
variable (Q U T R V' S : P)

-- Given: QR = 2
axiom hQR : dist Q R = 2

-- Given: VS = 7
axiom hVS : dist V' S = 7

-- Given: S is midpoint of RT
axiom hS_midpoint_RT : S = midpoint ℝ R T

-- Given: V is midpoint of QU (here written as V')
axiom hV_midpoint_QU : V' = midpoint ℝ Q U

-- Trapezoid midsegment theorem applies here for this configuration:
-- 2 * dist(V' S) = dist(Q R) + dist(U T)
axiom h_trapezoid_midsegment : 2 * dist V' S = dist Q R + dist U T

-- To Prove: dist(U T) = 12
theorem conclusion_length_UT_is_12 : dist U T = 12 := by
  rw [hQR, hVS] at h_trapezoid_midsegment
  linarith

end ProblemFormalization