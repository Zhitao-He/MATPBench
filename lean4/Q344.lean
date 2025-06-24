import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev EPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def s : ℝ := 2
noncomputable def s_sqrt2 : ℝ := Real.sqrt 2
noncomputable def half_s : ℝ := s / 2
noncomputable def val_coord : ℝ := s / 2 + s / s_sqrt2
noncomputable def P0 : EPoint := ![-half_s, -val_coord]
noncomputable def P1 : EPoint := ![half_s, -val_coord]
noncomputable def P2 : EPoint := ![val_coord, -half_s]
noncomputable def P3 : EPoint := ![val_coord, half_s]
noncomputable def P4 : EPoint := ![half_s, val_coord]
noncomputable def P5 : EPoint := ![-half_s, val_coord]
noncomputable def P6 : EPoint := ![-val_coord, half_s]
noncomputable def P7 : EPoint := ![-val_coord, -half_s]
noncomputable def lineP0P3 : AffineSubspace ℝ EPoint := affineSpan ℝ ({P0, P3} : Set EPoint)
noncomputable def lineP1P6 : AffineSubspace ℝ EPoint := affineSpan ℝ ({P1, P6} : Set EPoint)
noncomputable def lineP2P5 : AffineSubspace ℝ EPoint := affineSpan ℝ ({P2, P5} : Set EPoint)
noncomputable def lineP4P7 : AffineSubspace ℝ EPoint := affineSpan ℝ ({P4, P7} : Set EPoint)
noncomputable def VA : EPoint := ![0, -s_sqrt2]
noncomputable def VB : EPoint := ![-s_sqrt2, 0]
noncomputable def VC : EPoint := ![0, s_sqrt2]
noncomputable def VD : EPoint := ![s_sqrt2, 0]
lemma VA_is_intersection : VA ∈ lineP0P3 ∧ VA ∈ lineP1P6 := by sorry
lemma VB_is_intersection : VB ∈ lineP1P6 ∧ VB ∈ lineP4P7 := by sorry
lemma VC_is_intersection : VC ∈ lineP4P7 ∧ VC ∈ lineP2P5 := by sorry
lemma VD_is_intersection : VD ∈ lineP2P5 ∧ VD ∈ lineP0P3 := by sorry
noncomputable def triangleArea (p1 p2 p3 : EPoint) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
noncomputable def shadedRegionArea : ℝ := triangleArea VA VB VC + triangleArea VA VC VD
theorem regularOctagonDiagonalsArea : shadedRegionArea = 4 * Real.sqrt 2 := by sorry
