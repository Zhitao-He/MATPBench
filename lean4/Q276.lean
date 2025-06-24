import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Analysis.InnerProductSpace.PiL2
namespace CubeProblem
abbrev Point : Type := EuclideanSpace ℝ (Fin 3)
def sideLength : ℝ := 7
def pointA : Point := ![0, 0, 0]
def pointB : Point := ![sideLength, 0, 0]
def pointC : Point := ![sideLength, sideLength, 0]
def pointD : Point := ![0, sideLength, 0]
def pointE : Point := ![0, 0, sideLength]
def pointF : Point := ![sideLength, 0, sideLength]
def pointG : Point := ![sideLength, sideLength, sideLength]
def pointH : Point := ![0, sideLength, sideLength]
theorem allEdgesHaveSameLength :
  dist pointA pointB = sideLength ∧
  dist pointB pointC = sideLength ∧
  dist pointC pointD = sideLength ∧
  dist pointD pointA = sideLength ∧
  dist pointE pointF = sideLength ∧
  dist pointF pointG = sideLength ∧
  dist pointG pointH = sideLength ∧
  dist pointH pointE = sideLength ∧
  dist pointA pointE = sideLength ∧
  dist pointB pointF = sideLength ∧
  dist pointC pointG = sideLength ∧
  dist pointD pointH = sideLength
  := by sorry
theorem length_AG_is_sqrt_147 :
  dist pointA pointG = Real.sqrt 147
  := by sorry
end CubeProblem
