import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open EuclideanGeometry
open Real

noncomputable def areaQuadrilateral (A B C D : EuclideanPlane ℝ) : ℝ :=
  Triangle.area (Triangle.mk₂ A B C) + Triangle.area (Triangle.mk₂ A D C)

theorem area_quadrilateral_ABCD_is_100
    (A B C D : EuclideanPlane ℝ)
    (h_angle_ABC : (angle A B C).toReal = π / 2)
    (h_angle_ADC : (angle A D C).toReal = π / 2)
    (h_AD_eq_DC : dist A D = dist D C)
    (h_sum_AB_BC : dist A B + dist B C = 20) :
    areaQuadrilateral A B C D = 100 := by sorry