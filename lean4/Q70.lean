import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Data.Real.Basic
noncomputable section
abbrev P2 := EuclideanSpace ℝ (Fin 2)
instance : MetricSpace P2 := inferInstance
instance : NormedAddCommGroup P2 := inferInstance
instance : InnerProductSpace ℝ P2 := inferInstance
instance : FiniteDimensional ℝ P2 := inferInstance
def wallSideLength : ℝ := 16
def paramX : ℝ := wallSideLength / 4
def s3_v1 : P2 := ![wallSideLength - paramX, 0]
def s3_v2 : P2 := ![wallSideLength, paramX]
def s3_v3 : P2 := ![wallSideLength - paramX, 2 * paramX]
def s3_v4 : P2 := ![wallSideLength - 2 * paramX, paramX]
def s2_v1 : P2 := ![paramX, wallSideLength]
def s2_v2 : P2 := ![0, wallSideLength - paramX]
def s2_v3 : P2 := ![2 * paramX, wallSideLength - paramX]
def s2_v4 : P2 := ![paramX, wallSideLength - 2 * paramX]
def s1_v_BL : P2 := ![2 * paramX, paramX]
def s1_v_TL : P2 := ![2 * paramX, wallSideLength - paramX]
def s1_v_BR : P2 := ![wallSideLength, paramX]
def s1_v_TR : P2 := ![wallSideLength, wallSideLength - paramX]
def squareAreaFromAdjacentVertices (v1 v2 : P2) : ℝ :=
  (Euclidean.dist v1 v2) ^ 2
def areaS3 : ℝ := squareAreaFromAdjacentVertices s3_v1 s3_v2
def areaS2 : ℝ := squareAreaFromAdjacentVertices s2_v1 s2_v2
def areaS1 : ℝ := squareAreaFromAdjacentVertices s1_v_BL s1_v_TL
def totalAreaB : ℝ := areaS1 + areaS2 + areaS3
theorem totalAreaIs128 : totalAreaB = 128 := by
  sorry
end
