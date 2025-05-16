import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

open EuclideanGeometry

-- Points in 2D Euclidean plane
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Declare points N, C, B, D
variable (N C B D : Point)

-- Formalization: area of triangle NCB plus area of triangle BCD equals 50
theorem problem_statement : 
    area ℝ N C B + area ℝ B C D = 50 := 
by sorry