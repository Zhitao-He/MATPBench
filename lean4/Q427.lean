import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry
open scoped EuclideanGeometry 
namespace IsoscelesTriangleAngleProblem 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem value_of_x_is_70
    (P Q R : PPoint)
    (h_isosceles : EuclideanGeometry.angle Q P R = EuclideanGeometry.angle Q R P ∨
                   EuclideanGeometry.angle Q P R = EuclideanGeometry.angle R Q P)
    (h_angle_P_deg : EuclideanGeometry.angle Q P R = (40 / 180 * Real.pi)) 
    (x_rad : ℝ) 
    (h_straight_angle_deg : EuclideanGeometry.angle Q R P + x_rad = (180 / 180 * Real.pi)) : 
    x_rad = (70 / 180 * Real.pi) := by sorry 
end IsoscelesTriangleAngleProblem 
