import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open Real EuclideanGeometry
open scoped EuclideanGeometry 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
namespace CongruentTriangleProblem
variable (x : ℝ) 
theorem value_of_y_is_15
  (R S T X Y Z : PPoint) (y : ℝ)
  (h_corresponding_angles_equal : ∠ T R S = ∠ Z X Y)
  (h_angle_TRS_expr : ∠ T R S = (4 * y - 10) * (π / 180))
  (h_angle_ZXY_expr : ∠ Z X Y = (3 * y + 5) * (π / 180))
  : y = 15 := by
  have h_angles_eq : (4 * y - 10) * (π / 180) = (3 * y + 5) * (π / 180) := by
    let temp_angle_TRS_expr := h_angle_TRS_expr
    rw [←temp_angle_TRS_expr]
    rw [h_corresponding_angles_equal]
    rw [h_angle_ZXY_expr]
  have h_coeffs_eq : 4 * y - 10 = 3 * y + 5 := by
    field_simp [Real.pi_ne_zero] at h_angles_eq 
    exact h_angles_eq
  linarith
end CongruentTriangleProblem
