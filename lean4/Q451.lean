import Mathlib.Data.Real.Basic
import Mathlib.Data.Matrix.Notation
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Orientation
import Mathlib.Data.Nat.Squarefree
import Mathlib.Data.Nat.Gcd

-- Let's define a type alias for points in the Euclidean 2D space.
-- Points are represented as functions from Fin 2 to ℝ, i.e., vectors ![x, y].
abbrev Point2D := EuclideanSpace ℝ (Fin 2)

-- Constants from the recursive definition
def k_2019 : ℝ := 2019
def k_1_div_2020 : ℝ := (1 : ℝ) / 2020

-- Recursive definitions for the points Aᵢ, Bᵢ, Cᵢ, Dᵢ.
-- We define recA i as A_{i+1} from the problem statement, so recA 0 is A₁, etc.
mutual
  def recA (i : ℕ) : Point2D :=
    match i with
    | 0 => ![(0:ℝ), (0:ℝ)]  -- A₁ = (0,0)
    | i' + 1 => k_1_div_2020 • (recA i' + k_2019 • recB i')

  def recB (i : ℕ) : Point2D :=
    match i with
    | 0 => ![(1:ℝ), (0:ℝ)]  -- B₁ = (1,0)
    | i' + 1 => k_1_div_2020 • (recB i' + k_2019 • recC i')

  def recC (i : ℕ) : Point2D :=
    match i with
    | 0 => ![(1:ℝ), (1:ℝ)]  -- C₁ = (1,1)
    | i' + 1 => k_1_div_2020 • (recC i' + k_2019 • recD i')

  def recD (i : ℕ) : Point2D :=
    match i with
    | 0 => ![(0:ℝ), (1:ℝ)]  -- D₁ = (0,1)
    | i' + 1 => k_1_div_2020 • (recD i' + k_2019 • recA i')
end

-- Function to compute the area of the quadrilateral AᵢBᵢCᵢDᵢ.
-- The problem implies convex quadrilaterals. The transformation preserves convexity.
-- Area(ABCD) = Area(ABC) + Area(ADC) for a convex quadrilateral ABCD.
-- The `area` function from Mathlib.Geometry.Euclidean.Orientation gives signed area. We take absolute value.
def quadrilateralArea (p1 p2 p3 p4 : Point2D) : ℝ :=
  abs (area p1 p2 p3) + abs (area p1 p3 p4)

-- Area of the i-th quadrilateral AᵢBᵢCᵢDᵢ.
-- Corresponds to area of A_{idx+1}B_{idx+1}C_{idx+1}D_{idx+1} in problem statement.
def areaAt (idx : ℕ) : ℝ :=
  quadrilateralArea (recA idx) (recB idx) (recC idx) (recD idx)

-- The sum of all areas from i=1 to ∞.
-- This is ∑_{idx=0}^∞ areaAt(idx).
def totalArea : ℝ := ∑' (idx : ℕ), areaAt idx

-- The problem statement: there exist positive integers a, b, c with specific properties.
theorem problem_statement :
  ∃ (a b c : ℕ),
    a > 0 ∧ b > 0 ∧ c > 0 ∧
    Nat.Squarefree b ∧
    totalArea = (a^2 * b : ℝ) / (c : ℝ) ∧
    Nat.Coprime (a^2 * b) c :=
by sorry