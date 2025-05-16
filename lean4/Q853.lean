import Mathlib.Geometry.Euclidean.Basic

-- Define points as vectors in EuclideanSpace ℝ (Fin 2)
def A : EuclideanSpace ℝ (Fin 2) := ![0, 10]
def C : EuclideanSpace ℝ (Fin 2) := ![8, 0]
def B : EuclideanSpace ℝ (Fin 2) := ![24, 0]

-- The area of triangle ACB is 80
theorem area_triangle_ACB_eq_80 :
    EuclideanGeometry.area (by rw [FiniteDimensional.finrank_fin_fun, Fintype.card_fin]; norm_num) A C B = 80 := by
  sorry