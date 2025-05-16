import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real

-- Consider V a finite dimensional real inner product space (Euclidean space)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]

open scoped EuclideanGeometry

-- Points Q, R, S, P in V (2D Euclidean geometry)
variable (q r s p : V)

-- R is between Q and S (R on segment QS)
axiom h_r_between_qs : Wbtw ℝ q r s

-- QR = 8
axiom h_qr_eq_8 : dist q r = 8

-- PR = 12
axiom h_pr_eq_12 : dist p r = 12

-- ∠PRQ = 120°
axiom h_angle_prq_120 : ∠ p r q = (2 * π / 3)

-- ∠RPS = 90°
axiom h_angle_rps_90 : ∠ r p s = (π / 2)

-- Theorem: the area of triangle QPS is 96 * sqrt 3
theorem area_triangle_qps_eq_96sqrt3 :
    (1 / 2) * dist q p * dist p s * sin (∠ q p s) = 96 * Real.sqrt 3 := by
  sorry