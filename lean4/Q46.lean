import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Sphere.Tangent
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Sphere.Tangent
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry Affine AffineSubspace
variable (O P_ext A B : PPoint)
variable (r : ℝ)
noncomputable def γ : EuclideanGeometry.Sphere PPoint := EuclideanGeometry.Sphere.mk O r
axiom h_gamma_center : (EuclideanGeometry.Sphere.mk O r).center = O
axiom h_gamma_radius : (EuclideanGeometry.Sphere.mk O r).radius = r
axiom hr_pos : 0 < r
axiom hPA_tangent_at_A : sorry = affineSpan ℝ ({P_ext, A} : Set PPoint)
axiom hPB_tangent_at_B : sorry = affineSpan ℝ ({P_ext, B} : Set PPoint)
axiom hPA_length : dist P_ext A = 8
theorem perimeter_triangle_PCD_is_16
    (C D : PPoint)
    (hC_on_segment_PA : C ∈ segment ℝ P_ext A)
    (hD_on_segment_PB : D ∈ segment ℝ P_ext B)
    (hCD_tangent : ∃ (E : PPoint), E ∈ segment ℝ C D ∧ sorry = affineSpan ℝ ({C, D} : Set PPoint)) :
    dist P_ext C + dist C D + dist D P_ext = 16 := by
  sorry
