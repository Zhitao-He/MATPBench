import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.LinearAlgebra.Matrix.Determinant
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace

/-!
Formalization of a geometry problem involving a triangular plot of land ACD.
Points A, C, D define the vertices of the triangle.
Main Street, Aspen Road, Brown Road, and a railroad define relevant lines.
The main theorem states that the area of triangle ACD is 4.5 square miles.
Coordinates are in miles.
-/

-- The Euclidean plane ℝ², as EuclideanSpace ℝ (Fin 2)
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

-- Define the points
def A : PPoint := ![0, 0]
def C : PPoint := ![3, 3]
def D : PPoint := ![3, 6]
def B : PPoint := ![3, 0] -- intersection of Main Street and the railroad

-- Affine subspace in the plane: a line
abbrev Line := AffineSubspace ℝ PPoint

-- Main Street: the x-axis (y = 0)
def MainStreet : Line := {
  carrier := {p | p 1 = 0},
  direction := Submodule.span ℝ {![1, 0]},
  nonempty' := ⟨A, by simp [A]⟩,
  add_smul_mem' := by
    intros v p hp r
    simp only [Set.mem_setOf_eq] at hp ⊢
    rw [Fin.succ_zero_eq_one, Pi.add_apply, Pi.smul_apply, Pi.zero_apply, hp, zero_add, zero_smul, add_zero]
  smul_vsub_vadd_mem' := by
    intros p₁ p₂ p₃ hp₁ hp₂ r
    simp only [Set.mem_setOf_eq] at hp₁ hp₂ ⊢
    rw [Fin.succ_zero_eq_one, Pi.sub_apply, Pi.add_apply]
    rw [hp₁, hp₂, sub_self, smul_zero, add_zero]
}

-- Railroad: vertical line x = 3
def Railroad : Line := {
  carrier := {p | p 0 = 3},
  direction := Submodule.span ℝ {![0, 1]},
  nonempty' := ⟨C, by simp [C]⟩,
  add_smul_mem' := by
    intros v p hp r
    simp only [Set.mem_setOf_eq] at hp ⊢
    rw [Fin.zero_apply, Pi.add_apply, Pi.smul_apply]
    rw [zero_add, zero_smul, add_zero, hp]
  smul_vsub_vadd_mem' := by
    intros p₁ p₂ p₃ hp₁ hp₂ r
    simp only [Set.mem_setOf_eq] at hp₁ hp₂ ⊢
    rw [Fin.zero_apply, Pi.sub_apply, Pi.add_apply]
    rw [hp₁, hp₂, sub_self, smul_zero, add_zero]
}

-- Aspen Road: line through A and C
def AspenRoad : Line := AffineSubspace.affineSpan ℝ ({A, C} : Set PPoint)

-- Brown Road: line through A and D
def BrownRoad : Line := AffineSubspace.affineSpan ℝ ({A, D} : Set PPoint)

-- The triangle as a list of its vertices (for Triangle in Mathlib)
def triangleACD : Euclidean.Triangle ℝ PPoint := ⟨A, C, D⟩

/--
The area of triangle ACD is 4.5 (square miles).
We compute using the determinant formula for area:
Area = (1/2) * |det(![C - A, D - A])|
-/
theorem area_triangle_ACD_is_4_5 :
    (1/2 : ℝ) * Real.abs (Matrix.det (Matrix.ofVec2 (![C - A, D - A]))) = 4.5 :=
  by
    -- The matrix is:
    -- C - A = ![3, 3], D - A = ![3, 6]
    -- So as columns:
    -- | 3 3 |
    -- | 3 6 |
    -- det = 3*6 - 3*3 = 18 - 9 = 9
    -- area = (1/2) * |9| = 4.5
    have eq1 : C - A = ![3, 3] := by simp [C, A]
    have eq2 : D - A = ![3, 6] := by simp [D, A]
    rw [eq1, eq2]
    -- Matrix.ofVec2 places the two elements as columns
    -- In Lean, det of <|3,3|,|3,6|> is 3*6 - 3*3 = 9
    have : Matrix.det (Matrix.ofVec2 (![![3, 3], ![3, 6]])) = 9 := by simp [Matrix.det_fin_two]
    rw [this, Real.abs_of_pos (by norm_num)]
    norm_num