import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Pi.Bounds 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open Real EuclideanGeometry
open scoped EuclideanGeometry RealInnerProductSpace 
abbrev EucPl := EuclideanSpace ℝ (Fin 2)
noncomputable section 
theorem value_of_y
  (A B C : EucPl)      
  (x y : ℝ)            
  (h_AB_length : dist A B = 10)
  (h_AC_length : dist A C = y)
  (h_BC_length : dist B C = x)
  (h_angle_ABC : ∠ A B C = Real.pi / 3) 
  (h_angle_BCA_is_right : ∠ B C A = Real.pi / 2) 
  (h_x_is_positive : x > 0)
  (h_y_is_positive : y > 0)
  : y = 5 * sqrt 3 := by sorry
end noncomputable section
