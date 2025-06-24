import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem length_CA_eq_5_sqrt_26
  (A B C D : P)
  (h_AD : dist A D = 25)
  (h_CD : dist C D = 5)
  (h_DB : dist D B = 1)
  (h_collinear : dist A D + dist D B = dist A B)
  (h_right_ADC : EuclideanGeometry.angle A D C = Real.pi / 2)
  (h_right_ACB : EuclideanGeometry.angle A C B = Real.pi / 2)
  : dist C A = 5 * Real.sqrt 26 := by
  sorry
