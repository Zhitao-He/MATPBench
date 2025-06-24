import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.Convex.Side
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry Affine AffineSubspace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (deg : ℝ) : ℝ := deg * Real.pi / 180
theorem prove_angle_GHD_value
  (A D K H G J : PPoint)
  (h_DA : D ≠ A)
  (h_DK : D ≠ K)
  (h_GH : G ≠ H)
  (h_HD : H ≠ D)
  (hADK_measure : EuclideanGeometry.angle A D K = degToRad 96)
  (hHGJ_measure : EuclideanGeometry.angle H G J = degToRad 42)
  (hParallelGAHD : line[ℝ, G, A] ∥ line[ℝ, H, D])
  (hSamerayGAJ : SameRay ℝ (A -ᵥ G) (J -ᵥ G))
  (hOppositeSidesAD : ¬ (line[ℝ, G, H]).SSameSide A D)
  : EuclideanGeometry.angle G H D = degToRad 42 := by
  sorry
