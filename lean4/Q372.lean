import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

/-!
# Formalizing the "3/16 Square Shaded" Problem

Given a unit square with vertices `A (0,0)`, `B (1,0)`, `C (1,1)`, `D (0,1)`.
- Mark points `E` on `AB` at `x = 1/4`
- Mark points `F` on `BC` at `y = 1/2` (i.e., `F = (1,1/2)`)
- Mark `G` on `CD` at `x = 3/4`
- Mark `H` on `DA` at `y = 1/2` (i.e., `H = (0,1/2)`)

The diagonals `AC` and `EG` intersect, as do other drawn lines per the diagram. The shaded region (from the image) is the quadrilateral `F-G-H-E`.

Below we define the geometry, shaded area, and state the theorem about the shaded fraction as `3/16`.
-/

abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Vertices of the square
def a : Point := ![0, 0]
def b : Point := ![1, 0]
def c : Point := ![1, 1]
def d : Point := ![0, 1]

-- Points that subdivide the sides, matching the diagram
def e : Point := ![(1/4 : ℝ), 0]
def f : Point := ![1, (1/2 : ℝ)]
def g : Point := ![(3/4 : ℝ), 1]
def h : Point := ![0, (1/2 : ℝ)]

-- The four points E, F, G, H for the shaded quadrilateral.
def quadVerts : List Point := [e, f, g, h]

-- Since the area function for general quadrilaterals is not present in mathlib,
-- we decompose the quadrilateral into two triangles: E F G and E G H

def areaTriangle (P Q R : Point) : ℝ :=
  EuclideanGeometry.Triangle.area P Q R

-- Area of the shaded quadrilateral area EFGH = area(EFG) + area(EGH)
def shadedArea : ℝ :=
  areaTriangle e f g + areaTriangle e g h

-- Area of the unit square
def areaSquare : ℝ := 1

theorem shaded_fraction_of_square :
    shadedArea / areaSquare = (3/16 : ℝ) := by
  sorry