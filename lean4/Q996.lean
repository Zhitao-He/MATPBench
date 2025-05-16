import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic

open EuclideanGeometry InnerProductSpace Angle Real

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

theorem bisect_orthocenter_angle
    (A B C D E F G H I O P : P)
    (hrank : Fact (finrank ℝ V = 2))
    (hABC : ¬ Collinear ℝ A B C)
    (hO : O = circumcenter ℝ A B C)
    (hF_ne_A : F ≠ A)
    (hF_bisects : ∠ B A F = ∠ F A C)
    (hF_on_circO : F ∈ Sphere.mk O (dist A O))
    (hH : H = orthocenter ℝ A B C)
    (hD : D = orthogonalProjection (affineSpan ℝ ![A, C]) B)
    (hE : E = orthogonalProjection (affineSpan ℝ ![A, B]) C)
    (hADE : ¬ Collinear ℝ A D E)
    (hP : P = circumcenter ℝ A D E)
    (hG_on_ade : G ∈ Sphere.mk P (dist A P))
    (hG_on_O : G ∈ Sphere.mk O (dist A O))
    (hG_ne_A : G ≠ A)
    (hI_on_GF : Collinear ℝ G F I)
    (hI_on_BC : Collinear ℝ B C I)
    (hG_ne_F : G ≠ F)
    (hB_ne_H : B ≠ H)
    (hC_ne_H : C ≠ H)
    (hI_ne_H : I ≠ H) :
    ∠ B H I = ∠ I H C := by sorry