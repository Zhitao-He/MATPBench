import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C : P)
variable (h_AB : dist A B = 26)
variable (h_AC : dist A C = 24)
variable (h_CB : dist C B = 10)
variable (h_right_angle_ACB : EuclideanGeometry.angle A C B = Real.pi / 2)
theorem tan_ABC_value : Real.tan (EuclideanGeometry.angle A B C) = (12 : ℝ) / (5 : ℝ) := by sorry
end
