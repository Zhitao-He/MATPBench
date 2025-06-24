import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open EuclideanGeometry
open Real
open Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def trapezoidArea (base1 base2 height : ℝ) : ℝ :=
  (base1 + base2) * height / 2
theorem area_of_BCAD
  (A B C D : P)
  (h_AC_len : dist A C = 8)
  (h_DB_len : dist D B = 4)
  (h_trapezoid : ℝ)
  (h_trapezoid_val : h_trapezoid = 14)
  (h_parallel_sides : (affineSpan ℝ {D, B}).direction = (affineSpan ℝ {C, A}).direction) :
  trapezoidArea (dist A C) (dist D B) h_trapezoid = 84 :=
by
  sorry
