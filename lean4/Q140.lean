import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

/-!
# Putnam 1991 A3 (formalization in Lean 4)

The Euclidean plane is modeled as `P2`.
Points A, B, C, E are defined by coordinates.
Point D is the intersection of lines AC and BE.
The theorem expresses the area difference is 4.
-/

/-- Notation for the Euclidean plane over ℝ -/
abbrev P2 := EuclideanSpace ℝ (Fin 2)

/-- Coordinates for the relevant points -/
def pointA : P2 := ![0, 0]
def pointB : P2 := ![4, 0]
def pointC : P2 := ![4, 6]
def pointE : P2 := ![0, 8]

/-- 
Point D is the intersection of lines AC and BE, computed algebraically:
AC: y = (3/2)x
BE: y = -2x + 8
Solving, D = (16/7, 24/7)
-/
def pointD : P2 := ![16/7, 24/7]

/-- The corresponding triangle areas -/
def areaADE : ℝ := Triangle.area pointA pointD pointE
def areaBDC : ℝ := Triangle.area pointB pointD pointC

/-- The desired area difference is 4 -/
theorem putnam1991_a3_area_difference : areaADE - areaBDC = 4 := by
  sorry