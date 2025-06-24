import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Triangle 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Analysis.SpecialFunctions.Sqrt 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry 
open scoped EuclideanGeometry 
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F : P₂)
variable (h_ADE_not_collinear : ¬ Collinear ℝ ({A, D, E} : Set P₂))
variable (h_CBF_not_collinear : ¬ Collinear ℝ ({C, B, F} : Set P₂))
variable (h_Sbtw_AEF : Sbtw ℝ A E F)
variable (h_Sbtw_EFB : Sbtw ℝ E F B)
variable (h_dist_AD : dist A D = 8)
variable (h_dist_EF : dist E F = 6)
variable (h_angle_DAE : ∠ D A E = Real.pi / 6) 
variable (h_angle_AED : ∠ A E D = Real.pi / 2) 
variable (h_angle_CBF : ∠ C B F = Real.pi / 4) 
variable (h_angle_BFC : ∠ B F C = Real.pi / 2) 
variable (h_dist_DC_eq_EF : dist D C = dist E F)
variable (h_dist_DE_eq_CF : dist D E = dist C F)
theorem perimeter_ABCD_calculation :
  dist A D + dist D C + dist C B + dist A B = 24 + 4 * Real.sqrt 2 + 4 * Real.sqrt 3 := by
  sorry
