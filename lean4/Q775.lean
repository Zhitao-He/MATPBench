import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def lengthAB : ℝ := 10
noncomputable def angleOBA : ℝ := Real.pi / 3
noncomputable def radiusO : ℝ := 10
noncomputable def targetLengthAX : ℝ := 5
theorem findLengthAX
  (O A B X : P)
  (hAB : dist A B = lengthAB)
  (hOBA : EuclideanGeometry.angle O B A = angleOBA)
  (hOA : dist O A = radiusO)
  (hOB : dist O B = radiusO)
  (hBXO : EuclideanGeometry.angle B X O = Real.pi / 2)
  (hX_between : Sbtw ℝ A X B)
  : dist A X = targetLengthAX := by
  sorry
