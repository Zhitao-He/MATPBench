import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open scoped EuclideanGeometry 
open Real 
abbrev P := EuclideanSpace ℝ (Fin 2) 
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * Real.pi / 180
theorem geometryProblemIsoscelesTriangleAngles
    (A B C D : P)
    (h_D_on_AB : D ∈ segment ℝ A B)
    (h_isosceles_ACD : dist A D = dist C D)
    (h_isosceles_BDC : dist B C = dist C D)
    (h_angle_ABC : ∠ A B C = degreesToRadians 70) 
    : ∠ B A C = degreesToRadians 35 := 
by sorry
