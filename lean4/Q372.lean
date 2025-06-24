import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Simplex
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.AffineSpace.Combination 
open EuclideanGeometry 
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem shadedAreaFractionIs3_16 (s : ℝ) (hs : 0 < s) :
    let dPt : Point := ![0, 0]
    let cPt : Point := ![s, 0]
    let bPt : Point := ![s, s]
    let aPt : Point := ![0, s]
    let ePt : Point := midpoint ℝ bPt cPt 
    let triangleBcdVertices : Fin 3 → Point := ![dPt, cPt, bPt]
    let centroidWeights : Fin 3 → ℝ := fun _ => (1 : ℝ) / 3 
    let pPt : Point := sorry 
    let areaSquare : ℝ := s * s
    let areaShadedTriangle : ℝ := (sorry : ℝ) 
    areaShadedTriangle = (3 : ℝ) / 16 * areaSquare := by sorry
