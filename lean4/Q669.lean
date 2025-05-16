import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry
open Real

namespace EuclideanGeometryProblem


variable (A B C : EuclideanSpace ℝ (Fin 2))

theorem triangle_side_length_BC_is_11_sqrt_3 :
    
    dist A C = 11 →
    
    ∠ A B C = π / 6 →
    
    ∠ C A B = 2 * π / 3 →
    
    dist B C = 11 * sqrt 3 :=
  by sorry

end EuclideanGeometryProblem
