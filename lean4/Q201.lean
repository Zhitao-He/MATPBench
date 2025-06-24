import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Sphere 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Convex.Side
import Mathlib.Topology.MetricSpace.Basic
open Real
open scoped EuclideanGeometry
open Metric
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemFig1
noncomputable def C (o : P) (r : ℝ) : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk o r
theorem angle_apb_is_20_degrees
  (o a b p : P) (r : ℝ) (hr_pos : 0 < r)
  (hA_on_C : a ∈ C o r)
  (hB_on_C : b ∈ C o r)
  (hP_on_C : p ∈ C o r)
  (ha_ne_p : a ≠ p)
  (hb_ne_p : b ≠ p)
  (ha_ne_b : a ≠ b)
  (h_angle_aob : ∠ a o b = (40 : ℝ) * Real.pi / 180)
  (h_o_p_opposite_sides_ab : ¬ (line[ℝ, a, b]).WSameSide o p)
  : ∠ a p b = (20 : ℝ) * Real.pi / 180 := by
  let Ω : EuclideanGeometry.Sphere P := C o r
  have hoa : a ≠ o := by
    have h_dist_ao_eq_r : dist a o = r := mem_sphere.1 hA_on_C
    intro heq
    have h_dist_is_zero : dist a o = 0 := by rw [heq, dist_self]
    rw [h_dist_is_zero] at h_dist_ao_eq_r
    exact hr_pos.ne' (Eq.symm h_dist_ao_eq_r)
  have hob : b ≠ o := by
    have h_dist_bo_eq_r : dist b o = r := mem_sphere.1 hB_on_C
    intro heq
    have h_dist_is_zero : dist b o = 0 := by rw [heq, dist_self]
    rw [h_dist_is_zero] at h_dist_bo_eq_r
    exact hr_pos.ne' (Eq.symm h_dist_bo_eq_r)
  have hop : p ≠ o := by
    have h_dist_po_eq_r : dist p o = r := mem_sphere.1 hP_on_C
    intro heq
    have h_dist_is_zero : dist p o = 0 := by rw [heq, dist_self]
    rw [h_dist_is_zero] at h_dist_po_eq_r
    exact hr_pos.ne' (Eq.symm h_dist_po_eq_r)
  have h_central_eq_twice_inscribed : ∠ a o b = (2 : ℕ) • ∠ a p b :=
    sorry
  rw [h_angle_aob] at h_central_eq_twice_inscribed
  have : ∠ a p b = (20 : ℝ) * Real.pi / 180 := by
    have eq := h_central_eq_twice_inscribed.symm
    simp [nsmul_eq_mul] at eq
    linarith only [eq]
  exact this
end ProblemFig1
