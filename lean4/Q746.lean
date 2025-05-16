import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi

namespace GeometryProblem

open EuclideanGeometry

-- Helper for degrees to radians
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180

-- Euclidean plane with points A, B, C, G
variable {P : Type*} [EuclideanSpace ℝ 2 P]
variables (A B C G : P)

-- Given angle measures
variable (hABG : ∠ A B G = degToRad 47)
variable (hACG : ∠ A C G = degToRad 136)

-- Points B, C, G are collinear with C between B and G
variable (h_betw_BCG : Affine.Sbtw ℝ B C G)

-- Theorem: measure of ∠BCA is 44°
theorem angle_BCA : ∠ B C A = degToRad 44 := by
  sorry

end GeometryProblem