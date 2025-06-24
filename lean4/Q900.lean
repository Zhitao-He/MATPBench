import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
open Affine AffineSubspace 
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem find_CD_value
  (A B C D E F : P)
  (x y : ℝ)
  (hAB : dist A B = 6)
  (hAF : dist A F = 8)
  (hBC : dist B C = x)
  (hCD : dist C D = y)
  (hDE : dist D E = 2 * y - 3)
  (hFE : dist F E = x + 10 / 3)
  (hBF_parallel_CD : line[ℝ, B, F] ∥ line[ℝ, C, D])
  (hCB_parallel_DF : line[ℝ, C, B] ∥ line[ℝ, D, F])
  (hSbtwABC : Sbtw ℝ A B C)
  (hSbtwAFE : Sbtw ℝ A F E)
  (hSbtwCDE : Sbtw ℝ C D E)
  (h_x_pos : x > 0)
  (h_y_pos : y > 0)
  (h_DE_pos : 2 * y - 3 > 0) :
  y = 9 := by sorry
end
end
