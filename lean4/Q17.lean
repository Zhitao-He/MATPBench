import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
set_option linter.unusedVariables false
section
open Real InnerProductSpace
open scoped EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C D E O : P)
variable (r : ℝ)

axiom cyclic_quadrilateral_exterior_angle_equals_interior_opposite_angle :
  ∀ {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
    (A B C D E O : P) (r : ℝ)
    (h_r_pos : 0 < r)
    (hA_on_circle : A ∈ (⟨O, r⟩ : EuclideanGeometry.Sphere P))
    (hB_on_circle : B ∈ (⟨O, r⟩ : EuclideanGeometry.Sphere P))
    (hC_on_circle : C ∈ (⟨O, r⟩ : EuclideanGeometry.Sphere P))
    (hD_on_circle : D ∈ (⟨O, r⟩ : EuclideanGeometry.Sphere P))
    (h_Sbtw_ADE : Sbtw ℝ A D E)
    (hA_ne_B : A ≠ B) (hC_ne_B : C ≠ B) (hC_ne_D : C ≠ D) (hA_ne_C : A ≠ C) (hB_ne_D : B ≠ D)
    (h_collinear_ABD : ¬ Collinear ℝ ({A, B, D} : Set P))
    (h_collinear_BCD : ¬ Collinear ℝ ({B, C, D} : Set P))
    (h_angle_eq : Prop)
    (h_target_angle : Prop),
    h_angle_eq → h_target_angle
end
