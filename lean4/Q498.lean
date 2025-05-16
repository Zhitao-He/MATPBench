import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Pi.Bounds

open EuclideanGeometry

/--
Formalization of the diagram:  
A, B, C : EuclideanPlane  
AB = x, AD = 3 * sqrt 3, BD = 9, CD = y  
∠ABC = 30°, ∠BCA = 60°, AD ⟂ CD, CA ⟂ BA  
D is strictly between B, C on line BC  
Find x.
-/
theorem value_of_x_geometry
    (A B C D : EuclideanPlane)
    (x y : ℝ)
    (h_AB : dist A B = x)
    (h_AD : dist A D = 3 * Real.sqrt 3)
    (h_BD : dist B D = 9)
    (h_CD : dist C D = y)
    (h_angle_ABC : (angle A B C).value = Real.pi / 6)    -- 30°
    (h_angle_BCA : (angle B C A).value = Real.pi / 3)    -- 60°
    (h_angle_ADC : (angle A D C).value = Real.pi / 2)    -- 90°
    (h_angle_BAC : (angle B A C).value = Real.pi / 2)    -- 90°
    (h_perp_AD_CD : ∠ A D C = (Real.pi / 2))            -- redundant with above but emphasizes perpendicularity
    (h_perp_CA_BA : ∠ C A B = (Real.pi / 2))            -- redundant with above but emphasizes right angle at A
    (h_Sbtw : Sbtw ℝ B D C)
    : x = 6 * Real.sqrt 3 := by
  sorry