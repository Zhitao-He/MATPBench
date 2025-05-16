import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev Point := EuclideanSpace ℝ (Fin 2)

def C : Point := ![0, 0]
def M : Point := ![12, 0]
def B : Point := ![42, 0]
def A : Point := ![12, 16]

theorem perimeter_triangle_AMB_eq_80 :
    dist A M + dist M B + dist B A = (80 : ℝ) := by
  sorry
