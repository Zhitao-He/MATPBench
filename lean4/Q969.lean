import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
namespace ProblemFormalization
open Real EuclideanGeometry InnerProductSpace Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable instance : NormedAddTorsor P P := inferInstance
variable (A B C : P)     
variable (I : P)         
variable (P_center : P)  
variable (O_center : P)  
variable (K : P)         
variable (rP rO : ℝ)
variable (h_A_ne_B : A ≠ B) (h_B_ne_C : B ≠ C) (h_C_ne_A : C ≠ A)
variable (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
variable (h_I_is_incenter : True) 
variable (h_rP_pos : 0 < rP)
variable (h_rO_pos : 0 < rO)
noncomputable def circleP_obj : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk P_center rP
noncomputable def circleO_obj : EuclideanGeometry.Sphere P := EuclideanGeometry.Sphere.mk O_center rO
variable (h_P_tangent_AB : True) 
variable (h_P_tangent_AC : True) 
variable (h_B_on_O : dist B O_center = rO)
variable (h_C_on_O : dist C O_center = rO)
variable (h_tangency_at_K : True) 
variable (h_K_ne_B : K ≠ B)
variable (h_K_ne_C : K ≠ C)
variable (h_K_ne_I : K ≠ I)
theorem ki_bisects_angle_bkc :
    EuclideanGeometry.angle B K I = EuclideanGeometry.angle C K I := by
  sorry
end ProblemFormalization
