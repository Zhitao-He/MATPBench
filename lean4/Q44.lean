import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open Real EuclideanGeometry Affine
namespace TreeHeightProblem
variable (A B C D : PPoint)
axiom h_C_ne_D : C ≠ D
axiom h_A_ne_D : A ≠ D
axiom h_B_ne_D : B ≠ D
axiom h_A_ne_B : A ≠ B
axiom h_A_ne_C : A ≠ C
axiom h_B_ne_C : B ≠ C
axiom h_right_angle_CDA : ∠ C D A = π / 2
axiom h_right_angle_CDB : ∠ C D B = π / 2
axiom h_collinear_ABD : Collinear ℝ ({A, B, D} : Set PPoint)
axiom h_dist_AB_eq_10 : dist A B = (10 : ℝ)
axiom h_B_between_A_D : Sbtw ℝ A B D
axiom h_angle_CAD : ∠ C A D = π / 6
axiom h_angle_CBD : ∠ C B D = π / 3
noncomputable def treeHeight (C D : PPoint) : ℝ := dist C D
theorem target_tree_height_is_5_sqrt_3 :
  treeHeight C D = 5 * sqrt 3 := by
  sorry
end TreeHeightProblem
