import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.VecNotation

open scoped EuclideanSpace Real
open FinVecNotation

namespace RegularOctagonShadedArea

-- The Euclidean plane ℝ², as a 2-dimensional Euclidean space over ℝ.
local notation "P" => EuclideanSpace ℝ (Fin 2)

-- Side length of the regular octagon
def octagonSideLength : ℝ := 2

-- Circumradius for a regular octagon with side length 2.
-- R = s / (2 * sin(π/8)), and sin(π/8) = sqrt((2 - sqrt 2) / 4) = sqrt(2 - sqrt 2) / 2
-- Therefore, R = 2 / (sqrt(2 - sqrt 2))
def circumradius : ℝ := octagonSideLength / Real.sqrt (2 - Real.sqrt 2)

-- Octagon vertices: the k-th vertex (for k : Fin 8) is at
-- (R * cos(k * π / 4), R * sin(k * π / 4))
def octagonVertex (k : Fin 8) : P :=
  (circumradius • ![Real.cos (k.val * Real.pi / 4), Real.sin (k.val * Real.pi / 4)]) +ᵥ (0 : P)

-- The stated result: the sum of the four exterior triangle areas equals 4√2.
theorem shadedRegionArea :
    Triangle.area (octagonVertex 0) (octagonVertex 1) (octagonVertex 2) +
    Triangle.area (octagonVertex 2) (octagonVertex 3) (octagonVertex 4) +
    Triangle.area (octagonVertex 4) (octagonVertex 5) (octagonVertex 6) +
    Triangle.area (octagonVertex 6) (octagonVertex 7) (octagonVertex 0)
    = 4 * Real.sqrt 2 := by
  sorry

end RegularOctagonShadedArea