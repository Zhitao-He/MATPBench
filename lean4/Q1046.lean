import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Triangle

open Real InnerProductGeometry

-- 2D Euclidean plane
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

namespace GeometryProblem

variable {A B C D O E F : EuclideanPlane}

-- Hypotheses (assumptions of the problem):

-- A, B, C are triangle vertices and not collinear
variable (h_ABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set EuclideanPlane))

-- O is the circumcenter of △ABC
variable (hO_circum : O = circumcenter ℝ A B C)

-- D is an interior point of △ABC
variable (hD_interior : D ∈ (convexHull ℝ ({A, B, C} : Set EuclideanPlane)).interior)

-- ∠DAB = ∠DBC
variable (h_angle_DAB_eq_DBC : oangle ℝ D A B = oangle ℝ D B C)

-- ∠DAC = ∠DCB
variable (h_angle_DAC_eq_DCB : oangle ℝ D A C = oangle ℝ D C B)

-- E is the midpoint of AD
variable (hE_mid : E = midpoint ℝ A D)

-- EF ⟂ AD
variable (hF_perp : inner (F -ᵥ E) (D -ᵥ A) = 0)

-- F ∈ line CB
variable (hF_col_CB : Collinear ℝ ({F, B, C} : Set EuclideanPlane))

-- Distinctness assumptions
variable (hA_ne_D : A ≠ D)
variable (hE_ne_F : E ≠ F)

-- Theorem: ∠AFD = 2 * ∠OFC
theorem angle_AFD_eq_two_OFC :
    oangle ℝ A F D = (2 : ℝ) * oangle ℝ O F C := by
  sorry

end GeometryProblem