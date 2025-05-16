import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real EuclideanGeometry

/-!
# Pyramid with Square Base: Angle Problem

Given: A right pyramid with a square base and all eight edges of common length `l > 0`.
Goal: Prove that ∠A B D = π / 4 (i.e. 45°).
-/

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]

-- Vertices: A, B, C, D (base, in order), S (apex)
variable (A B C D S : P)

-- Edge length (positive real)
variable (l : ℝ)

-- Define a square of side `l`, with vertices in order A, B, C, D
structure IsSquare (A B C D : P) (l : ℝ) : Prop where
  dist_AB : dist A B = l
  dist_BC : dist B C = l
  dist_CD : dist C D = l
  dist_DA : dist D A = l
  angle_DAB : ∠ D A B = π / 2
  angle_ABC : ∠ A B C = π / 2
  angle_BCD : ∠ B C D = π / 2
  angle_CDA : ∠ C D A = π / 2

-- A right pyramid with all edges equal, square base, apex S orthogonally "above" the center O
structure RightPyramidWithSquareBaseAllEdgesEqual (A B C D S : P) (l : ℝ) : Prop where
  base_square : IsSquare A B C D l
  slant_SA : dist S A = l
  slant_SB : dist S B = l
  slant_SC : dist S C = l
  slant_SD : dist S D = l
  right_apex :
    let O := midpoint ℝ A C
    inner (S - O) (B - A) = 0 ∧ inner (S - O) (D - A) = 0

-- All geometry hypotheses
variable (hpyr : RightPyramidWithSquareBaseAllEdgesEqual A B C D S l)
variable (hl_pos : l > 0)

-- Main statement: In this configuration, the unoriented angle ∠A B D equals π / 4
theorem angle_ABD_eq_pi_div_4 : ∠ A B D = π / 4 := by sorry