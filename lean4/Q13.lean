import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped EuclideanGeometry
open Real
abbrev Point := EuclideanSpace ℝ (Fin 2)
def SameSide (l : Set Point) (A B : Point) : Prop := sorry
namespace ProblemDescription
noncomputable def angle_AOF_rad : ℝ := (40 : ℝ) / (180 : ℝ) * π
noncomputable def target_EFB_angle_rad : ℝ := (35 : ℝ) / (180 : ℝ) * π
theorem angle_EFB_is_35_degrees
  (O A B C E F : Point)
  (R : ℝ) (hR_pos : R > 0)
  (hA_on_circle : A ∈ Metric.sphere O R)
  (hB_on_circle : B ∈ Metric.sphere O R)
  (hE_on_circle : E ∈ Metric.sphere O R)
  (hF_on_circle : F ∈ Metric.sphere O R)
  (hAB_diameter_midpoint : midpoint ℝ A B = O)
  (h_angle_FOE_eq_EOB : angle F O E = angle E O B)
  (h_E_on_arc_FOB : (angle F O E : ℝ) + (angle E O B : ℝ) = (angle F O B : ℝ))
  (hC_on_EF : C ∈ segment ℝ E F)
  (hC_on_AB : C ∈ segment ℝ A B)
  (h_angle_AOF_val : (angle A O F : ℝ) = angle_AOF_rad)
  (h_AOF_plus_FOB_eq_pi : (angle A O F : ℝ) + (angle F O B : ℝ) = π)
  (h_SameSide_OF_EB : SameSide (affineSpan ℝ {O, F}) E B) :
  (angle E F B : ℝ) = target_EFB_angle_rad := by
  sorry
end ProblemDescription
