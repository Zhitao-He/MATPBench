import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem value_of_y (A B N Y : PPoint) (x y z : ℝ)
  (h_AY : dist A Y = 5)
  (h_YB : dist Y B = 14)
  (h_YN : dist Y N = y)
  (h_AN : dist A N = x)
  (h_AB : dist A B = z)
  (h_BAY_right : angle B A Y = (Real.pi / 2))
  (h_YNA_right : angle Y N A = (Real.pi / 2))
  (h_N_between_YB : Wbtw ℝ Y N B)
  : y = 25 / 14 := by sorry
