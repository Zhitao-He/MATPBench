import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem triangle_abc_area (a b c n : PPoint)
    (h_an_length : dist a n = 10)
    (h_bc_length : dist b c = 30)
    (h_cn_length : dist c n = 5)
    (h_ac_perp_cn : angle a c n = Real.pi / 2)
    (h_sbtw_bcn : Sbtw ℝ b c n)
    (h_a_ne_c : a ≠ c)
    (h_b_ne_c : b ≠ c) 
    (h_a_ne_b : a ≠ b) 
    : (1/2 : ℝ) * abs ( ((b -ᵥ a) 0 * (c -ᵥ a) 1) - ((b -ᵥ a) 1 * (c -ᵥ a) 0) ) = 75 * Real.sqrt 3 := by
  sorry
