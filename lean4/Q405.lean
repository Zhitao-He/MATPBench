import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Sqrt 
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)
noncomputable def pointC : EucPlane := ![0, 0]
noncomputable def pointA : EucPlane := ![0, 6]
noncomputable def pointB : EucPlane := ![8, 0]
noncomputable def legAC_len : ℝ := dist pointA pointC
noncomputable def legBC_len : ℝ := dist pointB pointC
noncomputable def hypAB_len : ℝ := dist pointA pointB
noncomputable def triangleArea (p1 p2 p3 : EucPlane) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
noncomputable def triangleAreaABC : ℝ := triangleArea pointA pointB pointC
noncomputable def semicircleArea (diameter : ℝ) : ℝ :=
  Real.pi * (diameter / 2)^2 / 2
noncomputable def areaSemicircleAC : ℝ := semicircleArea legAC_len
noncomputable def areaSemicircleBC : ℝ := semicircleArea legBC_len
noncomputable def areaSemicircleAB : ℝ := semicircleArea hypAB_len
noncomputable def totalAreaCrescents : ℝ :=
  areaSemicircleAC + areaSemicircleBC + triangleAreaABC - areaSemicircleAB
theorem hippocratesLunesArea : totalAreaCrescents = 24 := by sorry
noncomputable def legAC_val : ℝ := 6
noncomputable def legBC_val : ℝ := 8
noncomputable def hypAB_val : ℝ := Real.sqrt (legAC_val^2 + legBC_val^2) 
lemma legAC_len_val : legAC_len = legAC_val := by sorry
lemma legBC_len_val : legBC_len = legBC_val := by sorry
lemma hypAB_len_val : hypAB_len = hypAB_val := by sorry
lemma triangleAreaABC_val : triangleAreaABC = ((1 : ℝ) / 2) * legAC_val * legBC_val := by sorry 
