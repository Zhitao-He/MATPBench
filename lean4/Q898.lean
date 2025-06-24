import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (P_pt Q R S T : P)
variable (hPT : dist P_pt T = 6)
variable (hQR : dist Q R = 12)
variable (hSP : dist S P_pt = 4)
theorem find_length_SQ : dist S Q = 8 := by sorry
end
