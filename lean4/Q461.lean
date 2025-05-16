import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

-- Define Point as a type alias for EuclideanSpace ℝ (Fin 2)
abbreviation Point := EuclideanSpace ℝ (Fin 2)

-- Side lengths of the two squares
def s1SideLen : ℝ := 2
def s2SideLen : ℝ := 1

-- Vertices of the first square (S1), with bottom-left corner at the origin.
def vertexA_S1 : Point := ![0, s1SideLen]                   -- (0, 2) Top-left
def vertexB_S1 : Point := ![s1SideLen, s1SideLen]           -- (2, 2) Top-right
def vertexC_S1 : Point := ![s1SideLen, 0]                   -- (2, 0) Bottom-right
def vertexD_S1 : Point := ![0, 0]                           -- (0, 0) Bottom-left

-- Vertices of the second square (S2), abutting to the right of S1.
-- S2 shares vertexC_S1 as its bottom-left corner.
def vertexE_S2 : Point := ![s1SideLen + s2SideLen, 0]       -- (3, 0) Bottom-right
def vertexF_S2 : Point := ![s1SideLen + s2SideLen, s2SideLen] -- (3, 1) Top-right
def vertexG_S2 : Point := ![s1SideLen, s2SideLen]           -- (2, 1) Top-left
def vertexH_S2 : Point := ![s1SideLen, 0]                   -- (2, 0) Bottom-left (vertexC_S1)

-- Shaded triangle vertices:
-- 1. Top-left vertex of S1: (0, 2) = vertexA_S1
-- 2. Bottom-right vertex of S1: (2, 0) = vertexC_S1
-- 3. Bottom-right vertex of S2: (3, 0) = vertexE_S2
def shadedTriangleVertex1 : Point := vertexA_S1
def shadedTriangleVertex2 : Point := vertexC_S1
def shadedTriangleVertex3 : Point := vertexE_S2

-- Area of triangle given three points in 2D.
def triangleArea (p1 p2 p3 : Point) : ℝ :=
  (1 / 2 : ℝ) * Real.abs (
    (p2.get 0 - p1.get 0) * (p3.get 1 - p1.get 1) -
    (p2.get 1 - p1.get 1) * (p3.get 0 - p1.get 0)
  )

-- Theorem: The area of the shaded triangle is 1.
theorem shaded_area_is_one :
  triangleArea shadedTriangleVertex1 shadedTriangleVertex2 shadedTriangleVertex3 = 1 := by
  sorry