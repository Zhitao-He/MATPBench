import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry
namespace EuclideanGeometryProblem
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeterOfQuadrilateral (p₁ p₂ p₃ p₄ : PPoint) : ℝ :=
  dist p₁ p₂ + dist p₂ p₃ + dist p₃ p₄ + dist p₄ p₁
theorem quadrilateral_perimeter_is_56 (O C A B E : PPoint)
    (h_O_ne_E : O ≠ E)
    (h_A_ne_E : A ≠ E)
    (h_BO_val : dist B O = 15)
    (h_CE_val : dist C E = 7)
    (h_CO_val : dist C O = 13)
    (h_BO_eq_CA : dist B O = dist C A)
    (h_CO_eq_BA : dist C O = dist B A)
    (h_OE_perp_AE : EuclideanGeometry.angle O E A = Real.pi / 2)
    (h_collinear_CEA : Collinear ℝ ({C, E, A} : Set PPoint))
    (h_E_on_segment_CA : dist C E + dist E A = dist C A)
    : perimeterOfQuadrilateral O C A B = 56 := by
  sorry
end EuclideanGeometryProblem
