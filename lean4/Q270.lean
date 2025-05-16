import Mathlib.Data.Real.Basic


def topBoxLength : ℝ := 12
def topBoxWidth : ℝ := 1
def topBoxHeight : ℝ := 1


def stemBoxLength : ℝ := 4
def stemBoxWidth : ℝ := 1
def stemBoxHeight : ℝ := 7


def rectangularBoxSurfaceArea (length width height : ℝ) : ℝ :=
  2 * (length * width + length * height + width * height)


def compositeTSolidSurfaceArea
    (lTop wTop hTop : ℝ)
    (lStem wStem hStem : ℝ) : ℝ :=
  let surfaceAreaTopBox := rectangularBoxSurfaceArea lTop wTop hTop
  let surfaceAreaStemBox := rectangularBoxSurfaceArea lStem wStem hStem
  let overlapArea := lStem * wStem  
  surfaceAreaTopBox + surfaceAreaStemBox - 2 * overlapArea


theorem compositeFigureSurfaceArea_is_120 :
  compositeTSolidSurfaceArea
    topBoxLength topBoxWidth topBoxHeight
    stemBoxLength stemBoxWidth stemBoxHeight = 120 := by sorry