import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
noncomputable def circleO (O_center : PPoint) (O_radius : ℝ) : EuclideanGeometry.Sphere PPoint where 
  center := O_center
  radius := O_radius
theorem cd_bisects_angle_adf
    (P_pt O_center A B C D E F : PPoint) (O_radius : ℝ) 
    (h_O_radius_pos : O_radius > 0)
    (hP_outside_O : dist P_pt O_center > O_radius)
    (hA_on_O : A ∈ circleO O_center O_radius)
    (hB_on_O : B ∈ circleO O_center O_radius)
    (hC_on_O : C ∈ circleO O_center O_radius)
    (hD_on_O : D ∈ circleO O_center O_radius)
    (hE_on_O : E ∈ circleO O_center O_radius)
    (hP_pt_ne_A : P_pt ≠ A)
    (hPA_tangent : EuclideanGeometry.angle O_center A P_pt = Real.pi / 2) 
    (hP_pt_ne_B : P_pt ≠ B)
    (hPB_tangent : EuclideanGeometry.angle O_center B P_pt = Real.pi / 2) 
    (hC_ne_D : C ≠ D)
    (hPCD_collinear : Collinear ℝ ({P_pt, C, D} : Set PPoint)) 
    (hCOE_collinear : Collinear ℝ ({O_center, C, E} : Set PPoint)) 
    (hE_ne_C : E ≠ C)
    (hA_ne_C : A ≠ C)
    (hE_ne_B : E ≠ B)
    (hF_on_seg_AC : F ∈ segment ℝ A C)
    (hF_on_seg_EB : F ∈ segment ℝ E B)
    (hD_ne_A : D ≠ A)
    (hD_ne_F : D ≠ F) :
    EuclideanGeometry.angle A D C = EuclideanGeometry.angle C D F := by sorry 
