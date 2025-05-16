import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace EuclideanGeometryProblem


variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]


theorem angleAtIncenterGivenVertexAngle
    
    (A B C O : P)
    
    (notCollinearABC : ¬Collinear ℝ A B C)
    
    (oIsIncenter : O = Triangle.incenter ℝ A B C)
    
    (angleBAC : ∠ B A C = (110 / 180 : ℝ) * Real.pi) :
    
    ∠ B O C = (145 / 180 : ℝ) * Real.pi := by sorry

end EuclideanGeometryProblem