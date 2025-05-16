import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Data.Real.Basic

noncomputable section

open Real EuclideanGeometry

variables {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable (h_dim2 : FiniteDimensional.finrank ℝ V = 2)

variables {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points
variables (A B C D E F G : P)

-- Hypothesis: AB = AC
variable (hABAC : dist A B = dist A C)

-- Non-collinearity for circumscribed circles to exist
variable (h_ABD_not_collinear : ¬ Collinear ℝ A B D)
variable (h_ACD_not_collinear : ¬ Collinear ℝ A C D)

-- F: intersection of circumcircle of ABD and AC, not A or C
variable (hF_col_AC : Collinear ℝ A F C)
variable (hF_circ_ABD : dist F (circumcenter ℝ A B D) = dist A (circumcenter ℝ A B D))
variable (hF_ne_A : F ≠ A)
variable (hF_ne_C : F ≠ C)

-- E: intersection of circumcircle of ACD and AB, not A or B
variable (hE_col_AB : Collinear ℝ A E B)
variable (hE_circ_ACD : dist E (circumcenter ℝ A C D) = dist A (circumcenter ℝ A C D))
variable (hE_ne_A : E ≠ A)
variable (hE_ne_B : E ≠ B)

-- G: intersection of BF and CE
variable (hB_ne_F : B ≠ F)
variable (hC_ne_E : C ≠ E)
variable (hG_on_BF : Collinear ℝ B G F)
variable (hG_on_CE : Collinear ℝ C G E)

-- Distinctness for division
variable (hC_ne_G : C ≠ G)
variable (hC_ne_D : C ≠ D)

theorem geometry_BG_over_CG_eq_BD_over_CD :
    dist B G / dist C G = dist B D / dist C D := by sorry

end