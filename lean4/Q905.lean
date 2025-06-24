import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C : P)
variable (hAB : dist A B = 15)
variable (hAC : dist A C = 9)
variable (hBC : dist B C = 12)
variable (h_right : EuclideanGeometry.angle B C A = Real.pi / 2)
noncomputable def perimeterOfTriangle (A B C : P) : ℝ :=
  dist A B + dist B C + dist C A
theorem perimeter_ABC_eq_36 :
  perimeterOfTriangle A B C = 36 := by sorry
end
