import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def angleACB_deg (y : ℝ) : ℝ := 3 * y + 36
noncomputable def angleBDA_deg (y : ℝ) : ℝ := 9 * y - 12
noncomputable def angleCBD_deg (x : ℝ) : ℝ := 12 * x + 72
noncomputable def angleDAC_deg (x : ℝ) : ℝ := 25 * x + 20
theorem find_value_of_x (B D A C : PPoint) (x y : ℝ)
  (hCBD : angle C B D = degToRad (angleCBD_deg x))
  (hACB : angle A C B = degToRad (angleACB_deg y))
  (hBDA : angle B D A = degToRad (angleBDA_deg y))
  (hDAC : angle D A C = degToRad (angleDAC_deg x))
  (h_par : B ≠ D ∧ A ≠ C ∧ (D -ᵥ B = C -ᵥ A) ∧ (A -ᵥ B = C -ᵥ D))
  (hB_ne_C : B ≠ C)
  (hB_ne_D : B ≠ D)
  (hD_ne_A : D ≠ A)
  (hA_ne_C : A ≠ C)
  (hCBD_range : 0 ≤ angleCBD_deg x ∧ angleCBD_deg x ≤ 180)
  (hACB_range : 0 ≤ angleACB_deg y ∧ angleACB_deg y ≤ 180)
  (hBDA_range : 0 ≤ angleBDA_deg y ∧ angleBDA_deg y ≤ 180)
  (hDAC_range : 0 ≤ angleDAC_deg x ∧ angleDAC_deg x ≤ 180)
  : x = 4 := by
  sorry
