import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev Plane := EuclideanSpace ℝ (Fin 2)
variable (S R T : Plane)
variable (hSR : dist S R = 5)
variable (hST : dist S T = 4)
variable (hTR : dist T R = 3)
variable (hSTR_right : EuclideanGeometry.angle S T R = Real.pi / 2)
theorem tan_angle_SRT (S R T : Plane)
  (hSR : dist S R = 5) (hST : dist S T = 4) (hTR : dist T R = 3)
  (hSTR_right : EuclideanGeometry.angle S T R = Real.pi / 2) :
  Real.tan (EuclideanGeometry.angle S R T) = 4 / 3 := by
  sorry
