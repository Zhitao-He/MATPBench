import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem cyclicQuadrilateralAngleProperty
    (A B C D O : P)
    (r : ℝ)
    (h_r_pos : 0 < r)
    (hA : A ∈ EuclideanGeometry.Sphere.mk O r)
    (hB : B ∈ EuclideanGeometry.Sphere.mk O r)
    (hC : C ∈ EuclideanGeometry.Sphere.mk O r)
    (hD : D ∈ EuclideanGeometry.Sphere.mk O r)
    (h_distinct : Set.ncard {A, B, C, D} = 4)
    (h_angle : 2 * EuclideanGeometry.angle D A B = degToRad 110.0) :
    EuclideanGeometry.angle B C D = degToRad 125.0 := by sorry
