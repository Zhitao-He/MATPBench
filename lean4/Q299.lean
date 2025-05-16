import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

-- The Euclidean plane P = ℝ²
abbrev P := EuclideanSpace ℝ (Fin 2)

section RectangleShadedArea

/-!
A rectangle ABCD is four times as long as it is wide.
Point E is the midpoint of side BC. The unshaded region is triangle ABE.
Show that the shaded portion is 75% (i.e., 3/4) of the rectangle's area.
-/

-- Let w > 0 be the width
variable (w : ℝ) (hw : 0 < w)

def l (w : ℝ) : ℝ := 4 * w  -- length

-- Rectangle vertices; axis aligned for convenience.
def A (w : ℝ) : P := ![0, w]
def B : P := ![0, 0]
def C (w : ℝ) : P := ![l w, 0]
def D (w : ℝ) : P := ![l w, w]

-- E is the midpoint of BC
def E (w : ℝ) : P := (B + C w) / 2

-- Area of rectangle
def areaRect (w : ℝ) : ℝ := l w * w

-- Area of triangle ABE
def triangleABE (w : ℝ) : Triangle ℝ P := Triangle.mk (A w) B (E w)
def areaUnshaded (w : ℝ) : ℝ := (triangleABE w).area

-- Shaded area is the difference
def areaShaded (w : ℝ) : ℝ := areaRect w - areaUnshaded w

def targetFraction : ℝ := 3/4

theorem shaded_is_fraction_of_rectangle (w : ℝ) (hw : 0 < w) :
    areaShaded w = targetFraction * areaRect w := by sorry

end RectangleShadedArea