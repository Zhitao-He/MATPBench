import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
def c : EuclideanSpace ℝ (Fin 2) := ![3, 1]
def pOnCircle : EuclideanSpace ℝ (Fin 2) := ![8, 1]
noncomputable def rVal : ℝ := dist c pOnCircle
structure Circle where
  center : EuclideanSpace ℝ (Fin 2)
  radius : ℝ
noncomputable def myCircle : Circle where
  center := c
  radius := rVal
noncomputable def area (circle : Circle) : ℝ := Real.pi * circle.radius ^ 2
theorem circleAreaIs25Pi : area myCircle = 25 * Real.pi := by sorry
