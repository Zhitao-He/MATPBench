import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

section TriangleMidpointsArea

variable (A B C : EuclideanSpace ℝ (Fin 2))

noncomputable def D : EuclideanSpace ℝ (Fin 2) := midpoint ℝ B C

noncomputable def E : EuclideanSpace ℝ (Fin 2) := midpoint ℝ A D

noncomputable def F : EuclideanSpace ℝ (Fin 2) := midpoint ℝ C E

variable (h_area_ABC : Triangle.area A B C = 4)

theorem triangle_midpoints_area : Triangle.area D E F = (0.5 : ℝ) := by
  sorry

end TriangleMidpointsArea