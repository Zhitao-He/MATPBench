import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
open Affine
open RealInnerProductSpace
structure IsRegularPentagon (A B C D E : P) where
  side_len : ℝ
  h_side_len_pos : side_len > 0
  h_dist_AB : dist A B = side_len
  h_dist_BC : dist B C = side_len
  h_dist_CD : dist C D = side_len
  h_dist_DE : dist D E = side_len
  h_dist_EA : dist E A = side_len
  h_angle_EAB : ∠ E A B = (3 * Real.pi / 5)
  h_angle_ABC : ∠ A B C = (3 * Real.pi / 5)
  h_angle_BCD : ∠ B C D = (3 * Real.pi / 5)
  h_angle_CDE : ∠ C D E = (3 * Real.pi / 5)
  h_angle_DEA : ∠ D E A = (3 * Real.pi / 5)
theorem regular_pentagon_arc_measure
    (A B C D E : P)
    (Ω : EuclideanGeometry.Sphere P)
    (h_pentagon : IsRegularPentagon A B C D E)
    (h_radius_pos : Ω.radius > 0)
    (h_A_on_Ω : A ∈ Ω)
    (h_D_on_Ω : D ∈ Ω)
    (h_tangent_DC_at_D : inner ℝ (Ω.center -ᵥ D) (C -ᵥ D) = 0)
    (h_tangent_AB_at_A : inner ℝ (Ω.center -ᵥ A) (B -ᵥ A) = 0)
    : ∠ A Ω.center D = (4 * Real.pi / 5) := by sorry
