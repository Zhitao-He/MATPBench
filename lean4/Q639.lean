import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry
open scoped EuclideanGeometry
open scoped Real


abbrev Euc2 := EuclideanSpace ℝ (Fin 2)


variable (M P Q R : Euc2)


variable (x : ℝ)


noncomputable def degToRad (degrees : ℝ) : ℝ := degrees * (Real.pi / 180)



axiom hPMR : ∠ P M R = degToRad x

axiom hMRQ : ∠ M R Q = degToRad (5 * x)

axiom hQPM : ∠ Q P M = degToRad (4 * x)

axiom hRQP : ∠ R Q P = degToRad (2 * x)


axiom hQuadSum :
  ∠ P M R + ∠ M R Q + ∠ R Q P + ∠ Q P M = 2 * Real.pi

theorem find_angle_PMR : x = 30 := by sorry
