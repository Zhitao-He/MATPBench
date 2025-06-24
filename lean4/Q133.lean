import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open EuclideanGeometry Real
local notation "P₂" => EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p₁ p₂ p₃ : P₂) : ℝ :=
  (1/2 : ℝ) * abs ( ((p₂ -ᵥ p₁) 0 * (p₃ -ᵥ p₁) 1) - ((p₂ -ᵥ p₁) 1 * (p₃ -ᵥ p₁) 0) )
noncomputable def quadrilateral_area (p₁ p₂ p₃ p₄ : P₂) : ℝ :=
  triangleArea p₁ p₂ p₃ + triangleArea p₁ p₃ p₄
theorem area_AEDC_is_13_5
    (A B C P D E : P₂)
    (h_nondegenerate : ¬ Collinear ℝ ({A, B, C} : Set P₂)) 
    (hD_is_midpoint_BC : D = midpoint ℝ B C)
    (hE_is_midpoint_AB : E = midpoint ℝ A B)
    (hP_on_median_AD : P ∈ segment ℝ A D)
    (hP_on_median_CE : P ∈ segment ℝ C E)
    (hPE_length : dist P E = 3/2)
    (hPD_length : dist P D = 2)
    (hDE_length : dist D E = 5/2) :
    quadrilateral_area A E D C = 27/2 := by
  sorry
