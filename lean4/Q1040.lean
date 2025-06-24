import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem angle_AGC_eq_angle_FGC
  (o a b c d e f g : Point)
  (r : ℝ)
  (Ω : EuclideanGeometry.Sphere Point)
  (hO_center : Ω.center = o)
  (ha_on_Ω : a ∈ Ω)
  (hb_on_Ω : b ∈ Ω)
  (hc_on_Ω : c ∈ Ω)
  (he_on_Ω : e ∈ Ω)
  (hf_on_Ω : f ∈ Ω)
  (hABC_noncollinear : ¬ Collinear ℝ ({a, b, c} : Set Point))
  (hD_midpoint : d = midpoint ℝ b c)
  (hADE_collinear : Collinear ℝ ({a, d, e} : Set Point))
  (hE_ne_A : e ≠ a)
  (hEF_parallel_BC : AffineSubspace.Parallel (line[ℝ, e, f]) (line[ℝ, b, c]))
  (hAEG_collinear : Collinear ℝ ({a, e, g} : Set Point))
  (hCG_perp_AC : inner ℝ (g -ᵥ c) (a -ᵥ c) = 0)
  : EuclideanGeometry.angle a g c = EuclideanGeometry.angle f g c := by
  sorry
