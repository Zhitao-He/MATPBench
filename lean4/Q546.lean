import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem findYValue
    (P Q R S : PPoint) (x y : ℝ)
    (hPQ_len : dist P Q = y)       
    (hQR_len : dist Q R = x)       
    (hSP_len : dist S P = 2)       
    (hSR_len : dist S R = 4)       
    (hP_ne_Q : P ≠ Q)              
    (hR_ne_Q : R ≠ Q)              
    (hS_ne_Q : S ≠ Q)              
    (hR_ne_S : R ≠ S)              
    (hPQR_is_right_angle : angle P Q R = Real.pi / 2) 
    (hRSQ_is_right_angle : angle R S Q = Real.pi / 2) 
    (hy_pos : y > 0)               
    : y = 2 * Real.sqrt 3 := by
  sorry
