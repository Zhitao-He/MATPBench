import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

-- We work in a real inner product plane.
open EuclideanGeometry
open InnerProductSpace

/-
Problem formalization:

Given square ABCD of area 80.
Points E, F, G, H are on sides AB, BC, CD, DA such that
AE = BF = CG = DH, and AE = 3*EB = 25.

Let the "grey part" be the quadrilateral EFGH.

We ask: what is the area of EFGH?
-/

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P] [Fact (FiniteDimensional.finrank ℝ P = 2)]

namespace SquareGreyArea

/-- The property of 4 points A B C D (in order) forming a square of side s_len -/
structure IsSquare (A B C D : P) (s_len : ℝ) : Prop where
  side_AB : dist A B = s_len
  side_BC : dist B C = s_len
  side_CD : dist C D = s_len
  side_DA : dist D A = s_len
  s_len_pos : s_len > 0
  -- Right angles (adjacency via orthogonality)
  ortho_A : inner (B - A) (D - A) = 0
  ortho_B : inner (C - B) (A - B) = 0
  ortho_C : inner (D - C) (B - C) = 0
  ortho_D : inner (A - D) (C - D) = 0

/-- Area of a square with side s -/
def areaOfSquare (s : ℝ) : ℝ := s ^ 2

/-- Area of a right-angled triangle with perpendicular legs a, b -/
def areaOfRightTriangle (a b : ℝ) : ℝ := (1 / 2) * a * b

/--
Main formal statement matching the problem:

Given square A B C D of area 80 and E, F, G, H on sides as described,
with AE = BF = CG = DH, AE = 3 × EB = 25,
the area of the grey quadrilateral E F G H is 50.
-/
theorem greyQuadrilateral_area
  (A B C D E F G H : P) (s_len : ℝ)
  (h_sq : IsSquare A B C D s_len)
  (h_area : areaOfSquare s_len = 80)
  (hE : E ∈ segment ℝ A B)
  (hF : F ∈ segment ℝ B C)
  (hG : G ∈ segment ℝ C D)
  (hH : H ∈ segment ℝ D A)
  (h_AE_eq_BF : dist A E = dist B F)
  (h_BF_eq_CG : dist B F = dist C G)
  (h_CG_eq_DH : dist C G = dist D H)
  (h_AE_ratio : dist A E = 3 * dist E B)
  (h_AE_val : dist A E = 25) :
  let val_AE := dist A E
  let leg1 := val_AE
  let leg2 := s_len - val_AE
  let corner_area := areaOfRightTriangle leg1 leg2
  let total_corners := 4 * corner_area
  let area_grey := areaOfSquare s_len - total_corners
  area_grey = 50 := by
  sorry

end SquareGreyArea