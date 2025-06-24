import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open EuclideanGeometry
open FiniteDimensional
namespace GeometryProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem circle_perpendicular_length
  (A B C D E O : P)
  (Ω : EuclideanGeometry.Sphere P)
  (h_O_center : Ω.center = O)
  (h_Ω_radius : Ω.radius = (5/2 : ℝ))
  (hA_on_Ω : A ∈ Ω)
  (hB_on_Ω : B ∈ Ω)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hAOB_collinear : Collinear ℝ ({A, O, B} : Set P))
  (hAC_length : dist A C = 4)
  (hC_midpoint_arc_BD : dist B C = dist C D)
  (hE_on_line_AD : E ∈ affineSpan ℝ ({A, D} : Set P))
  (hA_ne_D : A ≠ D)
  (hC_ne_E : C ≠ E)
  (hA_ne_E : A ≠ E)
  (hCE_perp_AD : EuclideanGeometry.angle A E C = Real.pi / 2) :
  dist C E = (12/5 : ℝ) := by
  sorry
end GeometryProblem
