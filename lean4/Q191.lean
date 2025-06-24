import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open scoped EuclideanGeometry
namespace ProblemGeo
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeter_DBE (_ B D E : P) : ℝ := dist D B + dist B E + dist E D
theorem result
  (A B C D E : P)
  (h_ac_eq_bc : dist A C = dist B C)
  (h_angle_C_is_right : ∠ A C B = π / 2)
  (h_AD_bisects_CAB : ∠ C A D = ∠ D A B)
  (h_DE_perp_AB : ∠ D E A = π / 2)
  (h_D_on_BC : D ∈ segment ℝ B C)
  (h_E_on_AB : E ∈ segment ℝ A B)
  (h_AB_length : dist A B = 6)
  : perimeter_DBE A B D E = 6 := by sorry
theorem perimeter_DBE_eq_AB
  (A B C D E : P)
  (h_ac_eq_bc : dist A C = dist B C)
  (h_angle_C_is_right : ∠ A C B = π / 2)
  (h_AD_bisects_CAB : ∠ C A D = ∠ D A B)
  (h_DE_perp_AB : ∠ D E A = π / 2)
  (h_D_on_BC : D ∈ segment ℝ B C)
  (h_E_on_AB : E ∈ segment ℝ A B)
  : perimeter_DBE A B D E = dist A B := by sorry
end ProblemGeo
