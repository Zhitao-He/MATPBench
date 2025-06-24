import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
namespace ProblemGeo
noncomputable def r_val : ℝ := 18
noncomputable def Ω_circle (O : EuclideanPlane) : EuclideanGeometry.Sphere EuclideanPlane := EuclideanGeometry.Sphere.mk O r_val
noncomputable def angle_DAB_radians : ℝ := (50 / 180) * Real.pi
noncomputable def arcLength (p1 p2 : EuclideanPlane) (center : EuclideanPlane) (radius : ℝ) : ℝ :=
  radius * ∠ p1 center p2
noncomputable def target_arc_length_AB : ℝ := 8 * Real.pi
theorem arc_AB_length_is_8_pi
  (A B C D O : EuclideanPlane)
  (hA_on_circle : A ∈ Ω_circle O)
  (hB_on_circle : B ∈ Ω_circle O)
  (hC_on_circle : C ∈ Ω_circle O)
  (hD_on_circle : D ∈ Ω_circle O)
  (hO_is_midpoint_AD : O = midpoint ℝ A D)
  (h_dist_AD_is_36 : dist A D = 36)
  (h_AB_parallel_CD : line[ℝ, A, B] ∥ line[ℝ, C, D])
  (h_angle_DAB_is_50_deg : ∠ D A B = angle_DAB_radians)
  (hA_ne_B : A ≠ B)
  (hA_ne_D : A ≠ D)
  (hC_ne_D : C ≠ D)
  : arcLength A B O r_val = target_arc_length_AB := by
  sorry
end ProblemGeo
