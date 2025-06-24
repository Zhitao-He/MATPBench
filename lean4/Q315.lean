import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable instance : MetricSpace P := inferInstance
noncomputable instance : NormedAddTorsor P P := inferInstance
noncomputable def degrees_to_radians (d : ℝ) : ℝ := d * (Real.pi / 180)
section
variable (A B C D : P)
theorem prove_angle_B_is_70_degrees (geom : sorry) :
  EuclideanGeometry.angle A B C = degrees_to_radians 70 := by
  sorry
end
