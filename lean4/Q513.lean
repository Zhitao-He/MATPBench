import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic 
import Mathlib.Data.Real.Pi.Bounds 
open EuclideanGeometry Real
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemSetup
variable (A B C X : P)
variable (x : ℝ)
axiom h_AB : dist A B = 8
axiom h_AC : dist A C = 14
axiom h_BC : dist B C = 8
axiom h_BX : dist B X = x
axiom h_BX_perp_CX : ∠ B X C = Real.pi / 2
axiom h_X_on_AC : Wbtw ℝ A X C
noncomputable def target_x : ℝ := sqrt 15 
theorem value_of_x_is_sqrt_15 : x = target_x := by sorry
end ProblemSetup
