import Mathlib.Geometry.Euclidean.Basic

-- Declare a Euclidean space over ℝ and two points B and Y in it
variable {P : Type*} [EuclideanSpace ℝ P] (B Y : P)

-- Formalize the statement that the distance between B and Y is 3
theorem length_of_BY_is_3 : dist B Y = 3 := by sorry