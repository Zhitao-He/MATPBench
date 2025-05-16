import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open Affine

namespace RectangleCircumcircleAngle

variable {P : Type*} [EuclideanPlane P]

variable (A B C D O K E F L : P)
variable (r : ℝ)

variable 
  (hA_on_circle : A ∈ Sphere O r)
  (hB_on_circle : B ∈ Sphere O r)
  (hC_on_circle : C ∈ Sphere O r)
  (hD_on_circle : D ∈ Sphere O r)

variable 
  (hO_mid_AC : midpoint ℝ A C = O)
  (hO_mid_BD : midpoint ℝ B D = O)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hr_pos : 0 < r)

variable
  (hK_SameSide_AB_C : SameSide (affineLine ℝ A B) K C)
  (hK_SameSide_BC_D : SameSide (affineLine ℝ B C) K D)
  (hK_SameSide_CD_A : SameSide (affineLine ℝ C D) K A)
  (hK_SameSide_DA_B : SameSide (affineLine ℝ D A) K B)
  (hK_not_on_line_AB : ¬ Collinear ℝ A B K)
  (hK_not_on_line_BC : ¬ Collinear ℝ B C K)
  (hK_not_on_line_CD : ¬ Collinear ℝ C D K)
  (hK_not_on_line_DA : ¬ Collinear ℝ D A K)

variable 
  (hE_on_segment_CD : E ∈ segment ℝ C D)
  (hE_collinear_BKE : Collinear ℝ B K E)

variable
  (hF_on_segment_BC : F ∈ segment ℝ B C)
  (hF_collinear_DKF : Collinear ℝ D K F)

def L_def : P :=
  Sphere.secondInter O r A K hA_on_circle (by
    intro h
    subst h
    exact hK_not_on_line_AB (by rw [←h]; exact collinear_triple_left)
  )

variable (hK_dist_lt_r : dist K O < r)

lemma hL_on_circle : L_def O r A K hA_on_circle hK_not_on_line_AB ∈ Sphere O r :=
  Sphere.secondInter_mem_sphere hA_on_circle (by
    intro h
    subst h
    exact hK_not_on_line_AB (by rw [←h]; exact collinear_triple_left)
  )

lemma hL_collinear_AKL : Collinear ℝ A K (L_def O r A K hA_on_circle hK_not_on_line_AB) :=
  Sphere.collinear_fst_snd_secondInter hA_on_circle (by
    intro h
    subst h
    exact hK_not_on_line_AB (by rw [←h]; exact collinear_triple_left)
  )

lemma hL_ne_A : L_def O r A K hA_on_circle hK_not_on_line_AB ≠ A :=
  Sphere.secondInter_ne_fst_of_dist_lt_radius hA_on_circle (by
    intro h
    subst h
    exact hK_not_on_line_AB (by rw [←h]; exact collinear_triple_left)
  ) hK_dist_lt_r

theorem angle_FLE_is_90_degrees :
    ∠ F (L_def O r A K hA_on_circle hK_not_on_line_AB) E = Real.pi / 2 := by sorry

end RectangleCircumcircleAngle