import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def measureOfArc (p1 p2 center : P) : ℝ := EuclideanGeometry.angle p1 center p2
theorem measure_arc_GBA
  (A B C D G : P)
  (r_circle : ℝ) (hr_pos : r_circle > 0)
  (hA_on_Ω : A ∈ EuclideanGeometry.Sphere.mk G r_circle)
  (hB_on_Ω : B ∈ EuclideanGeometry.Sphere.mk G r_circle)
  (hC_on_Ω : C ∈ EuclideanGeometry.Sphere.mk G r_circle)
  (hD_on_Ω : D ∈ EuclideanGeometry.Sphere.mk G r_circle)
  (h_angle_AGB : EuclideanGeometry.angle A G B = Real.pi / 6)
  (h_angle_CGD : EuclideanGeometry.angle C G D = Real.pi / 2)
  : (measureOfArc A B G) * (180 / Real.pi) = 30 := by
  sorry
