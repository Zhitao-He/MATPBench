import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)
noncomputable def squareSideLength : ℝ := 8
noncomputable def vertexD : EucPlane := ![0, 0]
noncomputable def vertexA : EucPlane := ![0, squareSideLength]
noncomputable def vertexC : EucPlane := ![squareSideLength, 0]
noncomputable def hypotenuseMidpoint : EucPlane := midpoint ℝ vertexA vertexC
noncomputable def foldLineIntersectionE : EucPlane := ![0, squareSideLength/2]
noncomputable def foldLineIntersectionF : EucPlane := ![squareSideLength/2, 0]
noncomputable def triangleArea (p1 p2 p3 : EucPlane) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
noncomputable def areaTriangle₁ : ℝ := triangleArea vertexD vertexA vertexC
noncomputable def areaTriangle₂ : ℝ := triangleArea vertexD foldLineIntersectionE foldLineIntersectionF
noncomputable def areaOfResultingTrapezoid : ℝ := areaTriangle₁ - areaTriangle₂
theorem finalAreaIs24 : areaOfResultingTrapezoid = 24 := by sorry
