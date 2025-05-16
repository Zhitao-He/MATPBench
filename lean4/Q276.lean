import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Sqrt

-- Define the side length of the cube
def edgeLength : ℝ := 7

-- Define the vertices of the cube in Euclidean 3-space
def pointA : EuclideanSpace ℝ (Fin 3) := ![0, 0, edgeLength]
def pointB : EuclideanSpace ℝ (Fin 3) := ![edgeLength, 0, edgeLength]
def pointC : EuclideanSpace ℝ (Fin 3) := ![edgeLength, edgeLength, edgeLength]
def pointD : EuclideanSpace ℝ (Fin 3) := ![0, edgeLength, edgeLength]
def pointE : EuclideanSpace ℝ (Fin 3) := ![0, 0, 0]
def pointF : EuclideanSpace ℝ (Fin 3) := ![edgeLength, 0, 0]
def pointG : EuclideanSpace ℝ (Fin 3) := ![edgeLength, edgeLength, 0]
def pointH : EuclideanSpace ℝ (Fin 3) := ![0, edgeLength, 0]

-- State the theorem: the length of diagonal AG equals √147
theorem cube_AG_length : dist pointA pointG = Real.sqrt 147 := by
  sorry