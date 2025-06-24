import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
open EuclideanGeometry Affine AffineSubspace 
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem find_BC_length
    (A B C D E : P)
    (hAB : dist A B = 8)
    (hAE : dist A E = 12)
    (hAD : dist A D = 27)
    (h_col_ABC : Collinear ℝ ({A, B, C} : Set P))
    (h_btw_ABC : Wbtw ℝ A B C)
    (h_col_AED : Collinear ℝ ({A, E, D} : Set P))
    (h_btw_AED : Wbtw ℝ A E D)
    (hneB_E : B ≠ E)
    (hneC_D : C ≠ D)
    (hParallel : (affineSpan ℝ ({B, E} : Set P)).Parallel (affineSpan ℝ ({C, D} : Set P))) :
    dist B C = 10 := by
  sorry
