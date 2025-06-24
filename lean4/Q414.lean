import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic 
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2) 
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * π / 180 
theorem inscribedRectangle_angle_BAC
    (A B C W X Y Z : P) 
    (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
    (hABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (hWZY_right : ∠ W Z Y = π / 2)
    (hZYX_right : ∠ Z Y X = π / 2)
    (hYXW_right : ∠ Y X W = π / 2)
    (hXWZ_right : ∠ X W Z = π / 2)
    (hW_on_AB : W ∈ segment ℝ A B)
    (hX_on_AC : X ∈ segment ℝ A C)
    (hB_Z_Y_order : Wbtw ℝ B Z Y)
    (hZ_Y_C_order : Wbtw ℝ Z Y C)
    (h_angle_BWZ : ∠ B W Z = degreesToRadians 26)
    (h_angle_CXY : ∠ C X Y = degreesToRadians 64)
    : ∠ B A C = degreesToRadians 90 := by
  sorry
