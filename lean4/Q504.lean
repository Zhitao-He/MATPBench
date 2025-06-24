import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open EuclideanGeometry
open Real
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A C D E G : P)
variable (x : ℝ)
noncomputable def degToRad (θ : ℝ) : ℝ := θ * (Real.pi / 180)
axiom h_acd : ∠ A C D = degToRad x
axiom h_eca : ∠ E C A = degToRad (2 * x)
axiom h_gce : ∠ G C E = degToRad x
axiom h_sum : ∠ G C E + ∠ E C A + ∠ A C D = Real.pi
theorem value_of_x : x = 45 := by
  sorry
