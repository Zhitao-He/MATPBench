import Mathlib.Data.Real.Basic

namespace ProblemFormalization

-- Use EuclideanSpace ℝ (Fin 2) for points/vectors in 2D
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Square sizes
def largeSquareSide : ℝ := 6
def smallSquareSide : ℝ := 2

-- Points W, X, Y, Z: Each is a specific vertex of a small square in the corners
def W_pt : Point := ![smallSquareSide, smallSquareSide]  -- (2,2)
def X_pt : Point := ![largeSquareSide - smallSquareSide, smallSquareSide]  -- (4,2)
def Y_pt : Point := ![largeSquareSide - smallSquareSide, largeSquareSide - smallSquareSide]  -- (4,4)
def Z_pt : Point := ![smallSquareSide, largeSquareSide - smallSquareSide]  -- (2,4)

-- The reference point P is the origin/corner (0,0) of the large square
def P_ref : Point := ![0, 0]

-- Definition of a square ABCD (A,B,C,D in order, either orientation)
def isSquare (A B C D : Point) : Prop :=
  let vAB := B - A
  let vAD := D - A
  -- AB and AD have equal, nonzero length, are perpendicular, and C is parallelogram completion
  ‖vAB‖ ≠ 0 ∧
  ‖vAB‖ = ‖vAD‖ ∧
  inner vAB vAD = 0 ∧
  C = B + vAD

-- The (closed) set of all squares such that segment [DA] contains W, [AB] contains X, etc.
def validSquareConfigurations : Set (Point × Point × Point × Point) :=
  { S | let (A, B, C, D) := S
      ; isSquare A B C D
      ∧ W_pt ∈ segment ℝ D A
      ∧ X_pt ∈ segment ℝ A B
      ∧ Y_pt ∈ segment ℝ B C
      ∧ Z_pt ∈ segment ℝ C D }

-- Set of all possible distances from A to P_ref among these squares
def achievableDistancesAtoP : Set ℝ :=
  { d | ∃ (S : Point × Point × Point × Point), S ∈ validSquareConfigurations ∧ d = dist S.1 P_ref }

-- The maximum possible value of such a distance
def maxDistAtoP : ℝ := sSup achievableDistancesAtoP

-- The main claim to be proved
theorem maxDistAtoP_eq_six : maxDistAtoP = 6 := by sorry

end ProblemFormalization