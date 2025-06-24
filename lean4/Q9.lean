import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
def IsConcyclic (s : Set Point) : Prop := sorry
def SameSide (l : Set Point) (A B : Point) : Prop := sorry
namespace CircleChordsIntersectionAngle
theorem angle_BCE_is_70_degrees
  (A B C D E : Point)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (h_concyclic : IsConcyclic ({A, B, C, D} : Set Point))
  (hE_on_AB : E ∈ openSegment ℝ A B)
  (hE_on_CD : E ∈ openSegment ℝ C D)
  (h_angle_ADC_val : angle A D C = (35 / 180) * π)
  (h_angle_AEC_val : angle A E C = (105 / 180) * π)
  (h_same_side_BD_wrt_AC : SameSide (affineSpan ℝ {A, C}) B D) :
  angle B C E = (70 / 180) * π := by
  sorry
end CircleChordsIntersectionAngle
