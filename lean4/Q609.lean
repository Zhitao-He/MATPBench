import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace TriangleProblemDefinition
open EuclideanGeometry Real

variable (A B C : P)



noncomputable def side_a : ℝ := dist B C
noncomputable def side_b : ℝ := dist A C
noncomputable def side_c : ℝ := dist A B


variable (h_side_b_eq_3 : side_b A C = 3)
variable (h_angle_ABC : angle A B C = π / 3)  
variable (h_angle_CAB : angle C A B = π / 6)  
variable (h_perp_BC_AC : angle A C B = π / 2) 


theorem find_value_of_side_c : side_c A B = 2 * sqrt 3 := by
  sorry

end TriangleProblemDefinition
