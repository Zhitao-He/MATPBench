import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (A B C : PPoint)
variable (x : ℝ) 
variable (yDeg : ℝ) 
variable (h_AB : dist A B = 20)
variable (h_AC : dist A C = 10)
variable (h_BC : dist B C = x)
variable (h_x_pos : x > 0)
variable (h_BCA_right : EuclideanGeometry.angle B C A = Real.pi / 2)
variable (h_ABC_y : EuclideanGeometry.angle A B C = yDeg * (Real.pi / 180))
variable (h_A_ne_B : A ≠ B)
variable (h_B_ne_C : B ≠ C)
variable (h_A_ne_C : A ≠ C)
variable (h_yDeg_range : yDeg > 0 ∧ yDeg < 180)
variable (h_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set PPoint))
theorem value_of_yDeg : yDeg = 30 := by sorry
