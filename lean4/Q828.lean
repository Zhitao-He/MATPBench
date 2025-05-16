import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

namespace AngleProblem

-- We work in 2D Euclidean space over ℝ
variable {P : Type*} [EuclideanSpace ℝ (Fin 2)]

-- Declare points in 2D Euclidean space
variable (B C D E F H I J K : P)

-- Helper: degrees to radians
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)

-- Given/hypothesis: ∠BCJ = 105°
variable (h_angle_BCJ : (∠ B C J).toReal = degToRad 105)
-- Given/hypothesis: ∠FEK = 125°
variable (h_angle_FEK : (∠ F E K).toReal = degToRad 125)

-- Given: lines BD and FH are parallel
variable (h_parallel : Affine.SSubmodule.span ℝ {B, D} = Affine.SSubmodule.span ℝ {F, H})

-- Points B, C, D are collinear
variable (h_collinear_BCD : Collinear ℝ ({B, C, D} : Set P))
-- Points F, E, H are collinear
variable (h_collinear_FEH : Collinear ℝ ({F, E, H} : Set P))

-- Distinctness conditions
variable (hB_ne_C : B ≠ C) (hD_ne_C : D ≠ C) (hJ_ne_C : J ≠ C)
variable (hF_ne_E : F ≠ E) (hK_ne_E : K ≠ E) (hH_ne_E : H ≠ E)
variable (hJ_ne_I : J ≠ I) (hK_ne_I : K ≠ I)

-- Definition: x is the real value of angle JIK
noncomputable def x : ℝ := (∠ J I K).toReal

-- The problem statement/theorem: x = 130°
theorem x_is_130deg :
    x B C D E F H I J K = degToRad 130 := by sorry

end AngleProblem