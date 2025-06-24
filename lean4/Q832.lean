import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C D E : P)
variable (hAB : dist A B = 2)
variable (hCD : dist C D = 5)
variable (hAE : dist A E = 4)
variable (hED : dist E D = 9)
theorem length_AE_eq_4 : dist A E = 4 := by sorry
end
