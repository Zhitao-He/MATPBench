import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
namespace IsoscelesTriangleAngleProblem


variable {P Q R : EuclideanSpace ℝ (Fin 2)}


variable (angle : EuclideanSpace ℝ (Fin 2) → EuclideanSpace ℝ (Fin 2) → EuclideanSpace ℝ (Fin 2) → ℝ)


axiom is_isosceles : angle Q P R = angle Q R P ∨ angle Q P R = angle R Q P


axiom angle_P : angle Q P R = 40


variable (x : ℝ)


axiom straight_angle : angle Q R P + x = 180


theorem value_of_x_is_70 : x = 70 := by sorry

end IsoscelesTriangleAngleProblem
