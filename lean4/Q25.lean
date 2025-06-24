import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
namespace ProblemGeometrySetup
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
section TriangleDefinitions
variable (A B C : P₂)
noncomputable def d_midpoint (B C : P₂) : P₂ := midpoint ℝ B C
noncomputable def e_midpoint (A B C : P₂) : P₂ := midpoint ℝ A (d_midpoint B C)
noncomputable def f_midpoint (A B C : P₂) : P₂ := midpoint ℝ C (e_midpoint A B C)
noncomputable def area (p1 p2 p3 : P₂) : ℝ :=
  0.5 * abs ((p2 0 - p1 0) * (p3 1 - p1 1) - (p3 0 - p1 0) * (p2 1 - p1 1))
theorem area_relation_theorem
    (A B C : P₂)
    (h_area_ABC_is_4 : area A B C = 4) :
    area (d_midpoint B C) (e_midpoint A B C) (f_midpoint A B C) = 1 / 2 := by
  sorry
end TriangleDefinitions
end ProblemGeometrySetup
