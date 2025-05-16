import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.LinearAlgebra.Matrix.Determinant
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Data.Real.Basic

namespace GeometryProblem

-- 2D Euclidean points and vectors
abbrev P2 := EuclideanSpace ℝ (Fin 2)
abbrev V2 := EuclideanSpace ℝ (Fin 2)

open scoped RealInnerProductSpace
open EuclideanGeometry (midpoint)
open AffineSubspace

variable {A B C : P2}

-- Hypothesis: triangle is non-degenerate (ABC not collinear)
variable (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P2))

-- Some basic distinctness consequences
local lemma distinct_a_b : A ≠ B := by
  intro h; apply h_noncollinear; rw [h]; simp only [Set.insert_idem]; exact collinear_pair
local lemma distinct_a_c : A ≠ C := by
  intro h; apply h_noncollinear; rw [h]; simp only [Set.insert_idem]; exact collinear_pair
local lemma distinct_b_c : B ≠ C := by
  intro h; apply h_noncollinear; rw [h, ← Set.insert_idem (s₂ := {C})]; simp only [Set.insert_swap A C B]; exact collinear_pair

-- Circumcenter and orthocenter
def O : P2 := Triangle.circumcenter A B C
def H : P2 := Triangle.orthocenter A B C h_noncollinear

-- Altitude feet
def D : P2 := orthogonalProjection (affineLine ℝ A C distinct_a_c) B
def E : P2 := orthogonalProjection (affineLine ℝ A B distinct_a_b) C

-- G: intersection of AG (perpendicular to OH through A) and BC
variable (h_O_ne_H : O ≠ H)
variable (h_BC_not_perp_OH : inner (C -ᵥ B : V2) (H -ᵥ O) ≠ 0)

def G : P2 :=
  let vec_OH := H -ᵥ O
  let k :=
    - (inner (B -ᵥ A : V2) vec_OH) / (inner (C -ᵥ B : V2) vec_OH)
  B +ᵥ k • (C -ᵥ B)

-- F: intersection of DE and AG
variable (h_D_ne_E : D ≠ E)
variable (h_A_ne_G : A ≠ G)
variable (h_DE_AG_not_parallel : Matrix.det (Matrix.ofColVecs ![(E -ᵥ D), (G -ᵥ A)]) ≠ 0)

def F : P2 :=
  let vec_DE := E -ᵥ D
  let vec_AG := G -ᵥ A
  let vec_AD := D -ᵥ A
  let det_AG_DE := Matrix.det (Matrix.ofColVecs ![vec_AG, vec_DE])
  let det_AD_DE := Matrix.det (Matrix.ofColVecs ![vec_AD, vec_DE])
  let s := det_AD_DE / det_AG_DE
  A +ᵥ s • vec_AG

-- Conclusion: F is the midpoint of AG
theorem F_is_midpoint_of_AG :
    F = midpoint ℝ A G := by sorry

end GeometryProblem