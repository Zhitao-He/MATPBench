import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem angle_bisector_intersection_angle
    (A B C O : PPoint)
    (h_noncollinear : ¬Collinear ℝ ({A, B, C} : Set PPoint))
    (h_angle_A : EuclideanGeometry.angle B A C = (110 / 180 : ℝ) * π) :
    EuclideanGeometry.angle B O C = (145 / 180 : ℝ) * π := by
  sorry
