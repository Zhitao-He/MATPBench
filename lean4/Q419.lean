import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real
open scoped EuclideanGeometry
open Affine
open AffineSubspace
open InnerProductSpace 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem length_OP_is_8
  (A B C D O P : PPoint)
  (hAD : dist A D = 10)
  (hAO : dist A O = 10)
  (hOB : dist O B = 10)
  (hBC : dist B C = 10)
  (hAB : dist A B = 12)
  (hDO : dist D O = 12)
  (hOC : dist O C = 12)
  (h_O_between_DC : Sbtw ℝ D O C) 
  (h_AB_parallel_DC : line[ℝ, A, B] ∥ line[ℝ, D, C])
  (hP_on_AB : Wbtw ℝ A P B) 
  (hOP_perp_AB : inner ℝ (O -ᵥ P) (B -ᵥ A) = 0) :
  dist O P = 8 := by sorry
