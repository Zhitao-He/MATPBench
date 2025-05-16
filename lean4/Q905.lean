import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

-- Let PPoint denote the Euclidean plane ℝ².
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

-- Given A, B, C : PPoint,
-- dist P Q is the Euclidean distance between points P and Q,
-- P -ᵥ Q is the vector from Q to P,
-- inner u v is the inner (dot) product of two vectors.

theorem perimeter_triangle_abc_36 :
  ∃ (A B C : PPoint),
    (dist B C = (12 : ℝ)) ∧
    (dist C A = (9 : ℝ)) ∧
    (dist A B = (15 : ℝ)) ∧
    (inner (A -ᵥ C) (B -ᵥ C) = (0 : ℝ)) ∧
    (dist A B + dist B C + dist C A = (36 : ℝ)) :=
by sorry