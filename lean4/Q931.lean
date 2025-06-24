import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
open Affine AffineSubspace 
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)
theorem prove_value_of_y (A B D E G H : PPoint) (x y : ℝ)
  (hAG_ne : A ≠ G)
  (hEG_ne : E ≠ G)
  (hBG_ne : B ≠ G)
  (hHB_ne : H ≠ B)
  (hDB_ne : D ≠ B)
  (h_AGE_eq_55 : EuclideanGeometry.angle A G E = degToRad 55)
  (h_BGA_eq_x : EuclideanGeometry.angle B G A = degToRad x)
  (h_GBH_eq_y : EuclideanGeometry.angle G B H = degToRad y)
  (h_BD_parallel_GA : line[ℝ, B, D] ∥ line[ℝ, G, A]) 
  (h_BGA_AGE_supp : EuclideanGeometry.angle B G A + EuclideanGeometry.angle A G E = Real.pi)
  (h_DBG_GBH_supp : EuclideanGeometry.angle D B G + EuclideanGeometry.angle G B H = Real.pi)
  (h_consec_int_angles_sum_pi : EuclideanGeometry.angle B G A + EuclideanGeometry.angle D B G = Real.pi)
  : y = 125 := by
  sorry
