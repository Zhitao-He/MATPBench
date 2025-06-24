import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
open Affine AffineSubspace
namespace EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (T C B D E G : P)
variable (hCB_ne : C ≠ B)
variable (hDE_ne : D ≠ E)
variable (h_parallel : affineSpan ℝ {C, B} ∥ affineSpan ℝ {D, E})
variable (hTCD : Sbtw ℝ T C D)
variable (hCDG : Sbtw ℝ C D G)
variable (hB_not_on_transversal : B ∉ affineSpan ℝ ({T, C, D} : Set P))
variable (hE_not_on_transversal : E ∉ affineSpan ℝ ({C, D, G} : Set P))
theorem tcb_add_edg_eq_180 :
    ∠ T C B + ∠ E D G = Real.pi := by
  sorry
end EuclideanGeometry
