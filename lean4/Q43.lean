import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
section
variable (A B C D : P)
structure IsRectangle (p₁ p₂ p₃ p₄ : P) : Prop where
  angle_at_p1_is_right : EuclideanGeometry.angle p₄ p₁ p₂ = Real.pi / 2
  angle_at_p2_is_right : EuclideanGeometry.angle p₁ p₂ p₃ = Real.pi / 2
  angle_at_p3_is_right : EuclideanGeometry.angle p₂ p₃ p₄ = Real.pi / 2
  angle_at_p4_is_right : EuclideanGeometry.angle p₃ p₄ p₁ = Real.pi / 2
noncomputable def angle1 (A C D : P) : ℝ := EuclideanGeometry.angle C A D
noncomputable def angle2 (A C D : P) : ℝ := EuclideanGeometry.angle C D A
theorem rectangle_angle_property
    (h_is_rectangle : IsRectangle A B D C)
    (h_angle1_value : angle1 A C D = degToRad 38) :
    angle2 A C D = degToRad 52 := by sorry
end
