import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (T W Y : P)
theorem angle_TWY_eq_28_degrees :
  EuclideanGeometry.angle T W Y = (28 / 180 : ℝ) * Real.pi := by sorry
end
