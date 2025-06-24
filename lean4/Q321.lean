import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Data.Real.Basic
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable instance : MetricSpace P := inferInstance
noncomputable instance : NormedAddTorsor P P := inferInstance
noncomputable def areaOfTriangle (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1 - (p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0)
section
variable (A B C D E : P)
theorem area_relation_of_triangles
    (h_area_ABC : areaOfTriangle A B C = 6)
    (h_AB_parallel_DE : sorry)
    (h_BD_eq_4BC : dist B D = 4 * dist B C)
    (h_C_between_B_D : sorry)
    (h_C_between_A_E : sorry) :
    areaOfTriangle C D E = 54 := by sorry
end
