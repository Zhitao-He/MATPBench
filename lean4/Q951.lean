import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
open EuclideanGeometry
open Real
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace Problem
noncomputable def circleO (O : P) (r : ℝ) : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk O r
noncomputable def perp_vec (O C : P) : P :=
  ![ -((C - O) 1), (C - O) 0 ]
noncomputable def tangent_at_C (O C : P) : AffineSubspace ℝ P :=
  affineSpan ℝ {C, C + perp_vec O C}
theorem cd_bisects_angle_edf
  (O Q A B C D E F : P)
  (r : ℝ)
  (hr_pos : 0 < r)
  (hA_on_circleO : A ∈ circleO O r)
  (hB_on_circleO : B ∈ circleO O r)
  (hC_on_circleO : C ∈ circleO O r)
  (hQ_outside_circleO : r < dist Q O)
  (hQA_tangent_at_A : EuclideanGeometry.angle Q A O = π / 2)
  (hQB_tangent_at_B : EuclideanGeometry.angle Q B O = π / 2)
  (hA_ne_B : A ≠ B)
  (hD_on_line_AB : D ∈ line[ℝ, A, B])
  (hCD_perp_AB : inner ℝ (C -ᵥ D) (B -ᵥ A) = 0)
  (hC_ne_D : C ≠ D)
  (hE_on_line_QA : E ∈ line[ℝ, Q, A])
  (hE_on_tangent_at_C : E ∈ tangent_at_C O C)
  (hF_on_line_QB : F ∈ line[ℝ, Q, B])
  (hF_on_tangent_at_C : F ∈ tangent_at_C O C)
  (hE_ne_D : E ≠ D)
  (hF_ne_D : F ≠ D)
  : EuclideanGeometry.angle E D C = EuclideanGeometry.angle F D C := by
  sorry
end Problem
