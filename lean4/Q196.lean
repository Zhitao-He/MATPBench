import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open scoped EuclideanGeometry
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
namespace InscribedPentagonProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem angle_ABC_is_100_degrees
  (A B C D E O : P)
  (Ω : EuclideanGeometry.Sphere P)
  (h_center : Ω.center = O)
  (hA_on_Ω : A ∈ Ω)
  (hB_on_Ω : B ∈ Ω)
  (hC_on_Ω : C ∈ Ω)
  (hD_on_Ω : D ∈ Ω)
  (hE_on_Ω : E ∈ Ω)
  (h_C_ne_A : C ≠ A)
  (h_D_ne_A : D ≠ A)
  (h_A_ne_E : A ≠ E)
  (h_D_ne_E : D ≠ E)
  (h_A_ne_B : A ≠ B)
  (h_C_ne_B : C ≠ B)
  (h_angle_CAD : ∠ C A D = ↑(degToRad 30))
  (h_angle_AED : ∠ A E D = ↑(degToRad 115))
  : ∠ A B C = ↑(degToRad 100) := by
  sorry
end InscribedPentagonProblem
