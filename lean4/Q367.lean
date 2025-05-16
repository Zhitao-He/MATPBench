import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic

open Real

-- Define Point as EuclideanSpace ℝ (Fin 2)
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Helper to construct Point
def Point.mk (x y : ℝ) : Point :=
  fun i => if i = (0 : Fin 2) then x else y

-- Given side length
def sideLength : ℝ := 12

-- sin(π/8) = (sqrt (2 - sqrt 2)) / 2
def sinPiDiv8 : ℝ := (sqrt (2 - sqrt 2)) / 2

-- Circumradius of regular octagon: s/(2*sin(π/8))
def octagonCircumradius (s : ℝ) : ℝ := s / (2 * sinPiDiv8)

def R : ℝ := octagonCircumradius sideLength

-- Vertices B (π/4), C (π/2), D (3π/4), E (π)
def vertexB : Point := Point.mk (R * cos (π / 4)) (R * sin (π / 4))
def vertexC : Point := Point.mk (R * cos (π / 2)) (R * sin (π / 2))
def vertexD : Point := Point.mk (R * cos (3 * π / 4)) (R * sin (3 * π / 4))
def vertexE : Point := Point.mk (R * cos π) (R * sin π)

-- Shoelace area for quadrilateral (counterclockwise order)
def shoelaceAreaQuad (p1 p2 p3 p4 : Point) : ℝ :=
  ( (p1 0 * p2 1 - p1 1 * p2 0)
  + (p2 0 * p3 1 - p2 1 * p3 0)
  + (p3 0 * p4 1 - p3 1 * p4 0)
  + (p4 0 * p1 1 - p4 1 * p1 0) ) / 2

-- Area of trapezoid BCDE
def areaTrapezoidBCDE : ℝ :=
  shoelaceAreaQuad vertexB vertexC vertexD vertexE

-- The answer is 72 + 72 * sqrt 2
theorem final_area_calculation :
  areaTrapezoidBCDE = 72 + 72 * sqrt 2 := by sorry