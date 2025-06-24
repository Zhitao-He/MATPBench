import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Oriented.Basic
import Mathlib.LinearAlgebra.AffineSpace.AffineMap 
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)
namespace RotationProblem
open EuclideanGeometry
open Real.Angle
variable (C : EucPlane)
variable (darkerFigure : Set EucPlane)
variable (lighterFigure : Set EucPlane)
variable (θ_rot : Real.Angle)
variable (h_map : lighterFigure = (sorry : EucPlane →ᵃ[ℝ] EucPlane) '' darkerFigure) 
variable (h_visual : ∀ p ∈ darkerFigure, p ≠ C →
  ((sorry : EucPlane →ᵃ[ℝ] EucPlane) p) - C = -(p - C)) 
variable (h_nontrivial : ∃ p ∈ darkerFigure, p ≠ C)
theorem angle_of_rotation_is_180_degrees : θ_rot = pi :=
by sorry 
end RotationProblem
