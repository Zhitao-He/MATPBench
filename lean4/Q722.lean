import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable instance : MetricSpace Point := inferInstance
variable (F W Q : Point)
variable (x : ℝ)
theorem segment_length_deduction
    (hFQ : dist F Q = 10)
    (hFW : dist F W = x)
    (hWQ : dist W Q = 4)
    (h_W_between_F_Q : dist F W + dist W Q = dist F Q) :
    x = 6 := by
  sorry
