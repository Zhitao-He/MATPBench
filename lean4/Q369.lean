import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
noncomputable section
open EuclideanGeometry
def A : Fin 2 → ℝ := ![0, 6]
def B : Fin 2 → ℝ := ![0, 0]
def C : Fin 2 → ℝ := ![8, 0]
def D : Fin 2 → ℝ := fun i => (A i + B i) / 2
def E : Fin 2 → ℝ := fun i => (B i + C i) / 2
def F : Fin 2 → ℝ := fun i => (A i + C i) / 2
def triangleArea (p1 p2 p3 : Fin 2 → ℝ) : ℝ :=
  0.5 * abs ((p2 0 - p1 0) * (p3 1 - p1 1) - (p3 0 - p1 0) * (p2 1 - p1 1))
def quadrilateralArea (p1 p2 p3 p4 : Fin 2 → ℝ) : ℝ :=
  triangleArea p1 p2 p3 + triangleArea p1 p3 p4
theorem area_DBEF_is_8 :
    quadrilateralArea D B E F = 8 := by sorry
end
