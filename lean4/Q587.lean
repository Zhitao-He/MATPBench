import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem length_BC_is_five_sqrt_three_div_three (A B C : PPoint)
    (h_noncollinear : ¬Collinear ℝ ({A, B, C} : Set PPoint))
    (hAC : dist A C = 5)
    (hAngleABC : EuclideanGeometry.angle A B C = (Real.pi / 3))
    (hAngleCAB : EuclideanGeometry.angle C A B = (Real.pi / 6)) :
    dist B C = 5 * (sqrt 3) / 3 := by
  sorry
