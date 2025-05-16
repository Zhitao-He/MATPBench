import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

-- We work in a Euclidean affine plane P with associated 2-dimensional real vector space V
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points in the configuration
variable (A B C D : P)

-- Given lengths
variable (hAC : dist A C = 13)
variable (hDC : dist D C = 2)

-- Angle conditions (angles at C for triangles ACB, DCB are right)
variable (hAngleACB : ∠ A C B = Real.pi / 2)
variable (hAngleDCB : ∠ D C B = Real.pi / 2)

-- The theorem: |BD| = √22
theorem length_of_BD_is_sqrt22 : dist B D = Real.sqrt 22 := by
  sorry