import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Pi.Bounds
open EuclideanGeometry
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem value_of_x_is_50
  (F B C D : P)
  (h_distinct : B ≠ C ∧ C ≠ D ∧ D ≠ B ∧ B ≠ F ∧ C ≠ F ∧ D ≠ F)
  (h_on_circle : dist B F = dist C F ∧ dist C F = dist D F ∧ dist D F > 0)
  (h_angle_BFD : EuclideanGeometry.angle B F D = degToRad 165)
  (h_angle_DFC : EuclideanGeometry.angle D F C = degToRad 145)
  (x : ℝ)
  (h_angle_CFB : EuclideanGeometry.angle C F B = degToRad x)
  (h_sum_angles : EuclideanGeometry.angle B F D + EuclideanGeometry.angle D F C + EuclideanGeometry.angle C F B = 2 * Real.pi)
  : x = 50 :=
by
  sorry
