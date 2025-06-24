import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
namespace ShadedRegionProblem
abbrev P2 : Type := EuclideanSpace ℝ (Fin 2)
def xCoord (p : P2) : ℝ := p 0
def yCoord (p : P2) : ℝ := p 1
def v0 : P2 := ![0, 1]
def v1 : P2 := ![1, 2]
def v2 : P2 := ![0, 4]
def v3 : P2 := ![2, 3]
def v4 : P2 := ![4, 4]
def v5 : P2 := ![3, 2]
def v6 : P2 := ![4, 0]
def v7 : P2 := ![2, 1]
def shadedPolygonVertices : List P2 := [v0, v1, v2, v3, v4, v5, v6, v7]
noncomputable def shoelaceArea (vertices : List P2) : ℝ :=
  if vertices.length < 3 then
    0
  else
    let n := vertices.length
    let extendedVertices := vertices ++ [vertices.head!]
    let sumOfTerms : ℝ := Id.run do
      let mut currentSum : ℝ := 0
      for i in [:n] do
        let p_i := extendedVertices[i]!
        let p_ip1 := extendedVertices[(i+1)]!
        currentSum := currentSum + (xCoord p_i * yCoord p_ip1 - xCoord p_ip1 * yCoord p_i)
      return currentSum
    (1/2) * abs sumOfTerms
def areaIsSix : Prop := shoelaceArea shadedPolygonVertices = 6
theorem statedAreaResult : areaIsSix := by sorry
end ShadedRegionProblem
