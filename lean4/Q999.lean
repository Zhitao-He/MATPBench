import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Data.Real.Basic

noncomputable section

open EuclideanGeometry
open scoped RealInnerProductSpace

-- The Euclidean plane over ℝ
local notation "P" => EuclideanSpace ℝ (Fin 2)

namespace TangentSecantCircle

-- Given points
variable (O P_ A B C D E : P)

-- Radius of circle O
variable (r : ℝ)
variable (hr_pos : r > 0)

-- A, B, C lie on the circle O of radius r: that is, sphere (circle) with center O and radius r
variable (hA_on_circleO : dist A O = r)
variable (hB_on_circleO : dist B O = r)
variable (hC_on_circleO : dist C O = r)

-- P ≠ A, PA tangent to circle O at A, i.e., OA is perpendicular to PA
variable (hP_ne_A : P_ ≠ A)
variable (htangent : ⟪O -ᵥ A, P_ -ᵥ A⟫ = 0)

-- P, B, C collinear (secant of circle), B ≠ C, P ≠ B, P ≠ C
variable (hPBC_collinear : Collinear ℝ P_ B C)
variable (hB_ne_C : B ≠ C)
variable (hP_ne_B : P_ ≠ B)
variable (hP_ne_C : P_ ≠ C)

-- D is the foot of the perpendicular from A to OP
variable (hO_ne_P : O ≠ P_)
variable (hD_on_OP : D ∈ affineSpan ℝ ({O, P_} : Set P))
variable (hAD_perp_OP : ⟪A -ᵥ D, P_ -ᵥ O⟫ = 0)

-- A, D, C not collinear (for circumcircle), E is the other intersection (≠C) of circumcircle(ADC) with BC
variable (hADC_not_collinear : ¬ Collinear ℝ A D C)
variable (hE_on_circumADC : E ∈ Sphere (circumcenter ℝ A D C) (circumradius ℝ A D C))
variable (hE_on_BC : Collinear ℝ B E C)
variable (hE_ne_C : E ≠ C)

-- Further distinctions for well-defined angles
variable (hB_ne_A : B ≠ A)
variable (hE_ne_A : E ≠ A)
variable (hA_ne_C : A ≠ C)

-- Main theorem: angle BAE = angle ACB (unoriented)
theorem tangentSecantCircle_angles_eq :
    angle B A E = angle A C B := by
  sorry

end TangentSecantCircle

end