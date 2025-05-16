import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry Angle

-- Let P be a Euclidean plane
variable {P : Type*} [EuclideanPlane P]

-- Points in plane P
variables (A B C D E F G M N : P)

-- Hypotheses on triangle ABC
variable (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
variable (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))

-- D is on segment BC, and AD bisects angle BAC
variable (hD_on_BC : Wbtw ℝ B D C)
variable (hAD_bisects_BAC : IsAngleBisector (affineSpan ℝ {A, D}) A B C)

-- E is on segment AB, DE bisects angle ADB
variable (hE_on_AB : Wbtw ℝ A E B)
variable (hD_ne_E : D ≠ E)
variable (hDE_bisects_ADB : IsAngleBisector (affineSpan ℝ {D, E}) D A B)

-- F is on segment AC, DF bisects angle ADC
variable (hF_on_AC : Wbtw ℝ A F C)
variable (hD_ne_F : D ≠ F)
variable (hDF_bisects_ADC : IsAngleBisector (affineSpan ℝ {D, F}) D A C)

-- G is intersection of lines EF and AD
variable (hE_ne_F : E ≠ F)
variable (hG_on_EF : G ∈ affineSpan ℝ {E, F})
variable (hG_on_AD : G ∈ affineSpan ℝ {A, D})

-- M is intersection of lines BG and DF
variable (hM_on_BG : M ∈ affineSpan ℝ {B, G})
variable (hM_on_DF : M ∈ affineSpan ℝ {D, F})

-- N is intersection of lines CG and DE
variable (hN_on_CG : N ∈ affineSpan ℝ {C, G})
variable (hN_on_DE : N ∈ affineSpan ℝ {D, E})

-- Theorem: M, A, N are collinear, and MN ⟂ AD
theorem angle_bisectors_collinearity_perpendicularity :
    Collinear ℝ ({M, A, N} : Set P) ∧ Angle.isPerp (affineSpan ℝ {M, N}) (affineSpan ℝ {A, D}) := 
  by sorry