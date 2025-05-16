import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

set_option autoImplicit false

namespace MovingPointQuantities

-- This section formalizes the geometric setup and quantities for a problem
-- where point P moves along a line parallel to side AB of triangle PAB.
-- M and N are midpoints of PA and PB, respectively.

-- We work in a 2D Euclidean space.
-- EucSpace is the underlying vector space, EPoint is the affine point type.
abbrev EucSpace := EuclideanSpace ℝ (Fin 2)
abbrev EPoint := Point ℝ EucSpace

section ProblemSetup
  -- Fixed points A and B, defining one side of the triangle.
  variable (A B : EPoint)
  -- Assumption: A and B are distinct points.
  variable (hAB_distinct : A ≠ B)

  -- The line passing through A and B.
  def line_AB_side : AffineSubspace ℝ EPoint := line[ℝ, A, B]

  -- P₀ is a reference point on the line along which P moves.
  -- This line is parallel to line_AB_side and distinct from it,
  -- ensuring PAB is always a non-degenerate triangle.
  variable (P₀ : EPoint)
  variable (hP₀_not_on_line_AB_side : P₀ ∉ line_AB_side A B)

  -- The vector B -ᵥ A defines the direction of side AB.
  -- P moves parallel to AB, so P's path has the same direction.
  def direction_AB : EucSpace := B -ᵥ A

  -- Lemma ensuring direction_AB is not the zero vector (since A and B are distinct).
  -- The proof is omitted as per problem instructions.
  lemma direction_AB_ne_zero : direction_AB A B ≠ 0 := by sorry

  -- P_trajectory(t) is the position of point P as a function of a real parameter t.
  -- P moves along the line starting at P₀ in the direction_AB.
  def P_trajectory (t : ℝ) : EPoint := P₀ +ᵥ t • direction_AB A B

  -- M_trajectory(t) and N_trajectory(t) are the positions of midpoints M and N.
  -- M is the midpoint of PA, N is the midpoint of PB.
  def M_trajectory (t : ℝ) : EPoint := midpoint ℝ (P_trajectory A B P₀ t) A
  def N_trajectory (t : ℝ) : EPoint := midpoint ℝ (P_trajectory A B P₀ t) B

  -- Quantity a: The length of the segment MN.
  def length_MN (t : ℝ) : ℝ := dist (M_trajectory A B P₀ t) (N_trajectory A B P₀ t)

  -- Quantity b: The perimeter of triangle PAB.
  def perimeter_PAB (t : ℝ) : ℝ :=
    dist (P_trajectory A B P₀ t) A + dist (P_trajectory A B P₀ t) B + dist A B

  -- Quantity c: The area of triangle PAB.
  -- For Triangle.area, a `Fact (finrank ℝ EucSpace = 2)` is needed.
  -- This is true by definition for `EuclideanSpace ℝ (Fin 2)`
  -- and Mathlib provides the necessary instance.
  def triangle_PAB_shape (t : ℝ) : Triangle ℝ EPoint := ⟨P_trajectory A B P₀ t, A, B⟩
  def area_PAB (t : ℝ) : ℝ := (triangle_PAB_shape A B P₀ t).area

  -- Quantity d: The area of trapezoid ABNM.
  -- The vertices are A, B, N_trajectory t, M_trajectory t.
  -- Side AB is parallel to side MN (a property of midpoints).
  -- The height of the trapezoid is the perpendicular distance from M_trajectory t
  -- (or N_trajectory t) to line_AB_side.
  def height_trapezoid_ABNM (t : ℝ) : ℝ := (line_AB_side A B).dist (M_trajectory A B P₀ t)

  def area_trapezoid_ABNM (t : ℝ) : ℝ :=
    (1/2 : ℝ) * (dist A B + length_MN A B P₀ t) * (height_trapezoid_ABNM A B P₀ t)

end ProblemSetup

end MovingPointQuantities