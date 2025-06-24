import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (N C D : PPoint)
variable (Ω : EuclideanGeometry.Sphere PPoint)
variable (h_center_is_N : Ω.center = N)
variable (h_C_on_Ω : C ∈ Ω)
variable (h_D_on_Ω : D ∈ Ω)
variable (h_CN_eq_8 : dist C N = 8)
theorem length_DN_eq_8 : dist D N = 8 := by sorry
