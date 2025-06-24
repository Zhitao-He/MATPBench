import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
noncomputable section
namespace ProblemGeometry
open EuclideanGeometry
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (A B C G : PPoint)
variable (x : ℝ)
axiom h_CA : dist C A = 15
axiom h_CB : dist C B = x
axiom h_B_ne_G : B ≠ G
axiom h_B_ne_A : B ≠ A
axiom h_angle_GBA : EuclideanGeometry.angle G B A = Real.pi / 6
axiom h_A_ne_C : A ≠ C
axiom h_A_ne_B : A ≠ B
axiom h_tangent : EuclideanGeometry.angle C A B = Real.pi / 2
axiom h_GBA_eq_CBA : EuclideanGeometry.angle G B A = EuclideanGeometry.angle C B A
theorem value_of_x_is_30 : x = 30 := by
  sorry
end ProblemGeometry
