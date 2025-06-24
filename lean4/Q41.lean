import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open EuclideanGeometry
namespace ProblemDescription
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
structure CircleProblemSetup where
  O : PPoint
  A : PPoint
  B : PPoint
  C : PPoint
  D : PPoint
  r : ℝ
  h_radius_value : r = 2.0
  hD_on_circle : dist D O = r
  hA_on_circle : dist A O = r
  hB_on_circle : dist B O = r
  hO_midpoint_AB : O = midpoint ℝ A B
  hC_on_extended_line_AB : Sbtw ℝ A B C ∨ Sbtw ℝ C A B
  hCD_tangent_at_D : inner ℝ (O -ᵥ D) (C -ᵥ D) = 0
  h_CD_length_is_2sqrt3 : dist C D = 2 * Real.sqrt 3
open scoped RealInnerProductSpace
def angle_DAC_is_30_deg (D A C : EuclideanSpace ℝ (Fin 2)) : Prop :=
  angle D A C = π / 6
end ProblemDescription
