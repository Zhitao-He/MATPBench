import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

namespace QuadrilateralProblem

-- The Euclidean plane as 2-dimensional Euclidean space over ℝ
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

-- Side lengths of the quadrilateral
def ab_len : ℝ := 4
def bc_len : ℝ := 7
def cd_len : ℝ := 10
def da_len : ℝ := 5

/--
Predicate: integer `k` is a possible length for diagonal AC (i.e., there exists a non-degenerate quadrilateral with the given sides and k as diagonal AC).
-/
def IsPossibleIntegerAC (k : ℤ) : Prop :=
  (0 : ℝ) < (k : ℝ) ∧
  ∃ (A B C D : EuclideanPlane),
    dist A B = ab_len ∧
    dist B C = bc_len ∧
    dist C D = cd_len ∧
    dist D A = da_len ∧
    dist A C = (k : ℝ) ∧
    ¬ Collinear ℝ A B C ∧
    ¬ Collinear ℝ A D C

/--
By triangle inequalities for triangles ABC and ADC:
ABC:   |AB - BC| < AC < AB + BC  →  |4-7| < AC < 4+7  →  3 < AC < 11
ADC:   |AD - CD| < AC < AD + CD  →  |5-10| < AC < 5+10 →  5 < AC < 15
Intersect:    5 < AC < 11
Thus, integer lengths for AC are k ∈ {6, 7, 8, 9, 10}
-/
def expectedSolutionSetACLengths : List ℤ := [6, 7, 8, 9, 10]

/-- The number of possible integer values for AC -/
def numberOfPossibleIntegerACLengths : Nat :=
  expectedSolutionSetACLengths.length

/-- The equivalence between `IsPossibleIntegerAC` and being in the precalculated set -/
theorem aCLengthsEquivalence (k : ℤ) :
    IsPossibleIntegerAC k ↔ k ∈ expectedSolutionSetACLengths :=
  by sorry

end QuadrilateralProblem

-- #eval QuadrilateralProblem.numberOfPossibleIntegerACLengths -- Expected: 5