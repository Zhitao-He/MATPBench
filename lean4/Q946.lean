import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Circumcenter

open Classical
open Real
open EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

def lineThrough (p₁ p₂ : P) : AffineSubspace ℝ P := affineSpan ℝ ({p₁, p₂} : Set P)

def reflectionAcrossLine (p a b : P) : P :=
  let s := lineThrough a b
  p +ᵥ (2 • (orthogonalProjection s p -ᵥ p))

theorem inscribedQuadrilateralReflectionPerpendicular
    (A B C D O : P)
    (r : ℝ)
    (h_r_pos : 0 < r)
    (hO : O = midpoint ℝ A C)
    (hA : dist A O = r) (hB : dist B O = r) (hC : dist C O = r) (hD : dist D O = r)
    (hA_ne_C : A ≠ C) (hB_ne_D : B ≠ D)
    (E : P) (hE : E = reflectionAcrossLine D A C)
    (F : P) (hF : F = reflectionAcrossLine C B D)
    (hA_ne_F : A ≠ F) (hB_ne_E : B ≠ E)
    (G : P)
    (hG_AF : G ∈ lineThrough A F) (hG_BD : G ∈ lineThrough B D)
    (K : P)
    (hK_BE : K ∈ lineThrough B E) (hK_AC : K ∈ lineThrough A C) :
    Perpendicular ℝ (K -ᵥ G) (B -ᵥ G) := by sorry