import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle

open EuclideanGeometry

-- Working in the Euclidean plane ℝ²
abbrev P := EuclideanSpace ℝ (Fin 2)

-- Define the specific points as in the diagram
def B : P := ![0, 0]
def C : P := ![30, 0]
def N : P := ![35, 0]
def A : P := ![30, 10]

-- Assert the side lengths (for clarity/documentation: these are true by construction above)
lemma hAN : dist A N = 10 := by
  simp [A, N, dist, EuclideanSpace.norm_eq, Pi.sub_apply, Fin.sum_univ_two, sq,
        Real.sqrt_add, pow_two, sub_self, zero_add, sub_eq_add_neg, abs_of_nonneg, pow_two, abs_of_nonneg]
  norm_num

lemma hBC : dist B C = 30 := by
  simp [B, C, dist, EuclideanSpace.norm_eq, Pi.sub_apply, Fin.sum_univ_two, pow_two, sub_self, zero_add, abs_of_nonneg]
  norm_num

lemma hCN : dist C N = 5 := by
  simp [C, N, dist, EuclideanSpace.norm_eq, Pi.sub_apply, Fin.sum_univ_two, pow_two, sub_self, zero_add, abs_of_nonneg]
  norm_num

-- AC is perpendicular to NC (A C N form a right angle at C)
lemma hAC_perp_NC : RightAngle A C N := by
  unfold RightAngle
  simp [A, C, N, sub_eq_add_neg, Pi.sub_apply, Fin.vecCons, inner, Fintype.univ, Matrix.dotProduct, Fin.sum_univ_two]
  norm_num

-- B, C, N are collinear (all on x-axis)
lemma hCollinearBCN : Collinear ℝ ({B, C, N} : Set P) := by
  apply collinear_of_mem_of_mem_of_mem_lineMap
  · use 0
    simp [B, C, N, Set.mem_insert_iff, Set.mem_singleton_iff, exists_eq_left]
  · use (30/35 : ℝ)
    simp [B, C, N, Set.mem_insert_iff, Set.mem_singleton_iff, exists_eq_left]
  · use 1
    simp [B, C, N, Set.mem_insert_iff, Set.mem_singleton_iff, exists_eq_left]

-- The area of triangle ABC is 75 * sqrt 3
theorem area_triangle_ABC : Triangle.area A B C = 75 * Real.sqrt 3 := by
  sorry