import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic

noncomputable section

open Real EuclideanGeometry

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
  [FiniteDimensional ℝ P] [Fact (finrank ℝ P = 2)]

variable (A B C O F H E D O₁ G I : P)

variable (hABC : ¬Collinear ℝ A B C)
variable (hO : O = circumcenter ℝ A B C)
variable (hF_on_circum : F ∈ Sphere O (dist A O))
variable (hF_bisect : Angle.IsBisector (affineSpan ℝ {A, F}) (affineSpan ℝ {A, B}) (affineSpan ℝ {A, C}))
variable (hF_ne_A : F ≠ A)
variable (hH : H = orthocenter ℝ A B C)
variable (hE : E = orthogonalProjection (affineSpan ℝ {A, B}) C)
variable (hD : D = orthogonalProjection (affineSpan ℝ {A, C}) B)
variable (hADE : ¬Collinear ℝ A D E)
variable (hO₁ : O₁ = circumcenter ℝ A D E)
variable (hG_on_ADE : G ∈ Sphere O₁ (dist A O₁))
variable (hG_on_circum : G ∈ Sphere O (dist A O))
variable (hG_ne_A : G ≠ A)
variable (hG_ne_F : G ≠ F)
variable (hI_GF : I ∈ affineSpan ℝ {G, F})
variable (hI_BC : I ∈ affineSpan ℝ {B, C})
variable (hH_ne_B : H ≠ B)
variable (hH_ne_C : H ≠ C)
variable (hH_ne_I : H ≠ I)

theorem IH_bisects_angle_BHC :
  Angle.IsBisector (affineSpan ℝ {I, H}) (affineSpan ℝ {H, B}) (affineSpan ℝ {H, C}) := by
  sorry

end