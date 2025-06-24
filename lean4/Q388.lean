import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
universe u
abbrev P := EuclideanSpace ℝ (Fin 2)
open Real EuclideanGeometry
open scoped EuclideanGeometry
def IsSquareShape (s : ℝ) (_ : s > 0) (p1 p2 p3 p4 : P) : Prop :=
  dist p1 p2 = s ∧
  dist p2 p3 = s ∧
  dist p3 p4 = s ∧
  dist p4 p1 = s ∧
  EuclideanGeometry.angle p1 p2 p3 = π / 2 ∧
  EuclideanGeometry.angle p2 p3 p4 = π / 2 ∧
  EuclideanGeometry.angle p3 p4 p1 = π / 2 ∧
  EuclideanGeometry.angle p4 p1 p2 = π / 2
def IsEquilateralTriangleShape (s : ℝ) (_ : s > 0) (p1 p2 p3 : P) : Prop :=
  dist p1 p2 = s ∧
  dist p2 p3 = s ∧
  dist p3 p1 = s ∧
  EuclideanGeometry.angle p1 p2 p3 = π / 3 ∧
  EuclideanGeometry.angle p2 p3 p1 = π / 3 ∧
  EuclideanGeometry.angle p3 p1 p2 = π / 3
theorem angle_GCE_is_45_degrees
    (s : ℝ) (hs_pos : s > 0)             
    (A B C D E F G : P)                  
    (h_ABCD : IsSquareShape s hs_pos A B C D)         
    (h_BCE : IsEquilateralTriangleShape s hs_pos B C E) 
    (h_BEFG : IsSquareShape s hs_pos B E F G)         
    : EuclideanGeometry.angle G C E = π / 4 := by sorry
