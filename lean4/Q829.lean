import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace Problem
theorem sin_ABC_value (
  A B C : P)
  (hAB : dist A B = 26)
  (hAC : dist A C = 24)
  (hCB : dist C B = 10)
  (h_perp : EuclideanGeometry.angle A C B = Real.pi / 2)
  : Real.sin (EuclideanGeometry.angle A B C) = 12 / 13 := by sorry
end Problem
