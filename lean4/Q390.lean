import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open scoped RealInnerProductSpace
abbrev Point := EuclideanSpace ℝ (Fin 2)
def pointA : Point := ![1, 1]
def pointB : Point := ![1, 3]
def pointC : Point := ![3, 3]
def pointD : Point := ![4, 3]
def pointE : Point := ![4, 1]
noncomputable def triangleArea (p1 p2 p3 : Point) : ℝ :=
  (1 / 2 : ℝ) * abs ((p2 0 - p1 0) * (p3 1 - p1 1) - (p3 0 - p1 0) * (p2 1 - p1 1))
noncomputable def areaTriangleACE : ℝ := triangleArea pointA pointC pointE
noncomputable def areaRectangleABDE : ℝ :=
  dist pointA pointB * dist pointA pointE
theorem areaTriangleACE_halfRectangle :
    areaTriangleACE / areaRectangleABDE = (1/2 : ℝ) := by sorry
theorem areaTriangleACE_halfRectangle_alt :
    2 * areaTriangleACE = areaRectangleABDE := by sorry
