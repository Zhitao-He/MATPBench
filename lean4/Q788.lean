import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection

noncomputable section

open Real EuclideanGeometry

-- Points in the Euclidean plane
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

-- Declare points D, C, B (triangle vertices), N (centroid/incenter), E, F, G (tangency points)
variable (D C B N E F G : PPoint)

-- The triangle DCB
def triangleDCB : Triangle ℝ PPoint := Triangle.mk D C B

-- The inradius is given to be 3
def incircleRadius : ℝ := 3

-- Hypotheses:

-- 1. Triangle DCB is equilateral
axiom h_DCB_equilateral : triangleDCB.IsEquilateral

-- 2. N is the centroid of triangle DCB
axiom h_N_centroid : N = triangleDCB.centroid

-- 3. E, F, G are the feet of the perpendiculars from N to the sides (i.e., tangency points)
axiom h_E_on_DC : E = orthogonalProjection (affineSpan ℝ {D, C}) N
axiom h_F_on_CB : F = orthogonalProjection (affineSpan ℝ {C, B}) N
axiom h_G_on_BD : G = orthogonalProjection (affineSpan ℝ {B, D}) N

-- 4. The inradius of triangle DCB (i.e., dist N E) is 3
axiom h_NE : dist N E = incircleRadius

-- 5. D, C, B are distinct, and not collinear (a true triangle)
axiom h_D_ne_C : D ≠ C
axiom h_C_ne_B : C ≠ B
axiom h_B_ne_D : B ≠ D
axiom h_noncollinear : ¬ Collinear ℝ ({D, C, B} : Set PPoint)

-- Area of triangle DCB
def areaTriangleDCB : ℝ := triangleDCB.area

-- Area of the incircle
def areaIncircleN : ℝ := Real.pi * incircleRadius ^ 2

-- The difference in area
def areaDifference : ℝ := areaTriangleDCB - areaIncircleN

-- The value to prove (as given): 27 * Real.sqrt 3 - 9 * Real.pi
theorem areaDifference_value :
    areaDifference = 27 * Real.sqrt 3 - 9 * Real.pi := by sorry

end