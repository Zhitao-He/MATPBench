import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection

-- Setting up the 2D Euclidean Space
abbrev P₂ := EuclideanSpace ℝ (Fin 2)

namespace RectangleDistanceProblem

-- Given dimensions
def abSideLength : ℝ := 6
def acDiagonalLength : ℝ := 10

-- Derived length using Pythagorean theorem
def bcSideLength : ℝ := Real.sqrt (acDiagonalLength^2 - abSideLength^2)

-- Rectangle vertices coordinates
def pointA : P₂ := ![0, 0]
def pointB : P₂ := ![abSideLength, 0]
def pointC : P₂ := ![abSideLength, bcSideLength]
def pointD : P₂ := ![0, bcSideLength]  -- Adding the fourth point of the rectangle

-- Orthogonal projection of B onto diagonal AC
def pointX : P₂ := orthogonalProjection (affineSpan ℝ {pointA, pointC}) pointB

-- Midpoint of diagonal AC
def pointM : P₂ := midpoint ℝ pointA pointC

-- Distance between X and M
def distanceXM : ℝ := dist pointX pointM

-- Final statement: distance is 1.4 (7/5)
theorem distance_is_1_4 : distanceXM = (7/5 : ℝ) := by sorry

end RectangleDistanceProblem