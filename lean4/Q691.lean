import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
variable (A B C D E : PPoint)
variable (hE_between_D_C : Sbtw ℝ D E C)
variable (hBDE : EuclideanGeometry.angle B D E = degToRad 109)
variable (hCBE : EuclideanGeometry.angle C B E = degToRad 24)
variable (hEAC : EuclideanGeometry.angle E A C = degToRad 95)
variable (hECB : EuclideanGeometry.angle E C B = degToRad 33)
theorem find_angle_EBD : EuclideanGeometry.angle E B D = degToRad 14 := by
  sorry
