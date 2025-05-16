import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

namespace CylinderShortestPath


def cylinderHeight : ℝ := 5


def cylinderBottomCircumference : ℝ := 240


def shortestPathLength : ℝ := 13


noncomputable def horizontalDisplacementOnUnrolledSurface : ℝ :=
  Real.sqrt (shortestPathLength ^ 2 - cylinderHeight ^ 2)


lemma horizontalDisplacement_value :
    horizontalDisplacementOnUnrolledSurface = 12 :=
by sorry


theorem pythagoreanRelationForGivenValues :
  shortestPathLength ^ 2 = cylinderHeight ^ 2 + horizontalDisplacementOnUnrolledSurface ^ 2 :=
by sorry


lemma horizontalDisplacementIsPossible :
    0 < horizontalDisplacementOnUnrolledSurface ∧
    horizontalDisplacementOnUnrolledSurface ≤ cylinderBottomCircumference :=
by sorry

end CylinderShortestPath
