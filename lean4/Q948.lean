import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Analysis.Convex.Side 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.LinearAlgebra.AffineSpace.Midpoint 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open Real EuclideanGeometry Affine AffineSubspace
namespace ProblemFormalization
def IsTriangleInteriorPoint (I X Y Z : PPoint) : Prop := 
  (line[ℝ, X, Y]).SSameSide I Z ∧ 
  (line[ℝ, Y, Z]).SSameSide I X ∧ 
  (line[ℝ, Z, X]).SSameSide I Y 
def IsIncenter (I X Y Z : PPoint) : Prop := 
  (¬ Collinear ℝ ({X, Y, Z} : Set PPoint)) ∧
  (IsTriangleInteriorPoint I X Y Z) ∧
  (EuclideanGeometry.angle X Y I = EuclideanGeometry.angle Z Y I) ∧ 
  (EuclideanGeometry.angle Y Z I = EuclideanGeometry.angle X Z I) ∧ 
  (EuclideanGeometry.angle Z X I = EuclideanGeometry.angle Y X I)   
theorem inscribed_circle_theorem
    (A B C D E F : PPoint) 
    (h_A_ne_B : A ≠ B)
    (h_A_ne_C : A ≠ C)
    (h_B_ne_C : B ≠ C)
    (h_ABC_noncoll : ¬ Collinear ℝ ({A, B, C} : Set PPoint))
    (h_isosceles : dist C A = dist C B)
    (h_D_midpoint : D = midpoint ℝ A B) 
    (h_E_on_AC : E ∈ line[ℝ, A, C]) 
    (h_F_on_BC : F ∈ line[ℝ, B, C]) 
    (h_DEF_collinear : Collinear ℝ ({D, E, F} : Set PPoint))
    (h_E_ne_C : E ≠ C)
    (h_F_ne_C : F ≠ C)
    (h_E_ne_F : E ≠ F)
    (h_EFC_noncoll : ¬ Collinear ℝ ({E, F, C} : Set PPoint))
    (h_shared_incenter : ∃ I : PPoint, IsIncenter I A B C ∧ IsIncenter I E F C)
    : dist D E * dist D F = (dist D A) ^ 2 := by
  sorry
end ProblemFormalization
