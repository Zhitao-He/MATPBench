import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open EuclideanGeometry InnerProductSpace Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
lemma dist_pos_implies_ne {p₁ p₂ : PPoint} (h : dist p₁ p₂ > 0) : p₁ ≠ p₂ :=
  fun h_eq => by rw [h_eq, dist_self] at h; exact lt_irrefl 0 h
noncomputable def area_triangle_coord (p₁ p₂ p₃ : PPoint) : ℝ :=
  (1/2 : ℝ) * abs ( ((p₂ -ᵥ p₁) 0 * (p₃ -ᵥ p₁) 1) - ((p₂ -ᵥ p₁) 1 * (p₃ -ᵥ p₁) 0) )
noncomputable def areaQuadrilateralADBC (A B C D E : PPoint) : ℝ :=
  area_triangle_coord D E A + area_triangle_coord D E B + area_triangle_coord C E B + area_triangle_coord C E A
theorem area_ADBC_value (A B C D E : PPoint)
    (hAE : dist A E = 12) (hBE : dist B E = 12)
    (hCE : dist C E = 17) (hDE : dist D E = 17)
    (hPerp : angle D E A = Real.pi / 2)
    (hWbtwAEB : Wbtw ℝ A E B) (hWbtwDEC : Wbtw ℝ D E C)
    (hA_ne_E_lemma : A ≠ E := dist_pos_implies_ne (by rw [hAE]; norm_num))
    (hB_ne_E_lemma : B ≠ E := dist_pos_implies_ne (by rw [hBE]; norm_num))
    (hC_ne_E_lemma : C ≠ E := dist_pos_implies_ne (by rw [hCE]; norm_num))
    (hD_ne_E_lemma : D ≠ E := dist_pos_implies_ne (by rw [hDE]; norm_num))
    (hPerp_DEB : angle D E B = Real.pi / 2) 
    (hPerp_CEA : angle C E A = Real.pi / 2) 
    (hPerp_CEB : angle C E B = Real.pi / 2) 
    : areaQuadrilateralADBC A B C D E = 408 := by
  unfold areaQuadrilateralADBC
  sorry
