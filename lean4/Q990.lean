import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter

-- Setup: Euclidean affine space P over a real inner product space V
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points of the quadrilateral and constructed points
variable (A B C D E F G : P)

-- Assumptions: Points are all distinct
variable (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hA_ne_D : A ≠ D)
variable (hB_ne_C : B ≠ C) (hB_ne_D : B ≠ D) (hC_ne_D : C ≠ D)

-- Assumptions: Triangles ABD and ACD are not collinear
variable (hABD_not_collinear : ¬ Collinear ℝ ({A, B, D} : Set P))
variable (hACD_not_collinear : ¬ Collinear ℝ ({A, C, D} : Set P))

-- Given: AB = AC
variable (hAB_eq_AC : dist A B = dist A C)

-- F: intersection of circ(ABD) and line AC, F ≠ A
variable (hF_on_circ_ABD : dist F (circumcenter ℝ A B D) = circumradius ℝ A B D)
variable (hF_on_AC : Collinear ℝ ({A, F, C} : Set P))
variable (hF_ne_A : F ≠ A)

-- E: intersection of circ(ACD) and line AB, E ≠ A
variable (hE_on_circ_ACD : dist E (circumcenter ℝ A C D) = circumradius ℝ A C D)
variable (hE_on_AB : Collinear ℝ ({A, E, B} : Set P))
variable (hE_ne_A : E ≠ A)

-- G: Intersection point of lines BF and CE, G lies strictly between B and F, and C and E
variable (hG_Sbtw_BF : Sbtw ℝ B G F)
variable (hG_Sbtw_CE : Sbtw ℝ C G E)

-- Theorem: BG / CG = BD / CD
theorem ratio_BG_CG_eq_ratio_BD_CD :
    dist B G / dist C G = dist B D / dist C D := by sorry