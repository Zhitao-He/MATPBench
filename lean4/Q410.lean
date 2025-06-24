import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Basic 
namespace RectangularPrismProblem
abbrev P3 := EuclideanSpace ℝ (Fin 3)
structure IsRightRectangularPrism (A B C D E F G H : P3) where
  l : ℝ 
  w : ℝ 
  h : ℝ 
  hl : 0 < l
  hw : 0 < w
  hh : 0 < h
  vecAB : P3
  vecAD : P3
  vecAE : P3
  hB : B = A + vecAB
  hD : D = A + vecAD
  hE : E = A + vecAE
  hC : C = A + vecAB + vecAD
  hF : F = A + vecAB + vecAE
  hH : H = A + vecAD + vecAE
  hG : G = A + vecAB + vecAD + vecAE
  ortho_AB_AD : inner ℝ vecAB vecAD = 0
  ortho_AB_AE : inner ℝ vecAB vecAE = 0
  ortho_AD_AE : inner ℝ vecAD vecAE = 0
  norm_vecAB_eq_l : ‖vecAB‖ = l
  norm_vecAD_eq_w : ‖vecAD‖ = w
  norm_vecAE_eq_h : ‖vecAE‖ = h
noncomputable def volumePrism {A B C D E F G H : P3} (prism_props : IsRightRectangularPrism A B C D E F G H) : ℝ :=
  prism_props.l * prism_props.w * prism_props.h
noncomputable def volumePyramidABCH {A B C D E F G H : P3} (prism_props : IsRightRectangularPrism A B C D E F G H) : ℝ :=
  (1/6 : ℝ) * prism_props.l * prism_props.w * prism_props.h
theorem rectangular_prism_pyramid_volume
    {A B C D E F G H : P3} 
    (prism_props : IsRightRectangularPrism A B C D E F G H)
    (h_vol_pyramid : volumePyramidABCH prism_props = 20) :
    volumePrism prism_props = 120 := by
  sorry
end RectangularPrismProblem
