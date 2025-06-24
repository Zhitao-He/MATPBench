import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
open Real
noncomputable section
def degToRad (d : ℝ) : ℝ := d * (π / 180)
namespace CircleProblem
variable {P_plane : Type*} [NormedAddCommGroup P_plane] [InnerProductSpace ℝ P_plane]
variable (A N P Q : P_plane)
axiom h_AN_eq_AP : dist A N = dist A P
axiom h_AP_eq_AQ : dist A P = dist A Q
axiom h_NAP_value : InnerProductGeometry.angle (A -ᵥ N) (A -ᵥ P) = degToRad 120
axiom h_PAQ_value : InnerProductGeometry.angle (A -ᵥ P) (A -ᵥ Q) = degToRad 100
theorem angle_QPN_eq_70_degrees : InnerProductGeometry.angle (P -ᵥ Q) (P -ᵥ N) = degToRad 70 := by
  sorry
end CircleProblem
