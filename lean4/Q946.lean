import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
noncomputable section EuclideanProblem
open scoped EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable [Fact (Module.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
def reflectionAcrossLine (l₁ l₂ D : P) (h : l₁ ≠ l₂) : P :=
  let line_pts := line[ℝ, l₁, l₂]
  EuclideanGeometry.reflection line_pts D
theorem inscribed_quadrilateral_reflection_perpendicular
    (A B C D O E F G K : P)
    (Ω : EuclideanGeometry.Sphere P)
    (hO : Ω.center = O)
    (hAΩ : A ∈ Ω)
    (hBΩ : B ∈ Ω)
    (hCΩ : C ∈ Ω)
    (hDΩ : D ∈ Ω)
    (hACdiam : Ω.IsDiameter A C)
    (hΩr_pos : 0 < Ω.radius)
    (hA_ne_C : A ≠ C)
    (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_D : C ≠ D) (hD_ne_A : D ≠ A)
    (hB_ne_D : B ≠ D)
    (hE : E = EuclideanGeometry.reflection (line[ℝ, A, C]) D) 
    (hF : F = EuclideanGeometry.reflection (line[ℝ, B, D]) C) 
    (hA_ne_F : A ≠ F)
    (hG_on_AF : G ∈ line[ℝ, A, F])
    (hG_on_BD : G ∈ line[ℝ, B, D])
    (hB_ne_E : B ≠ E)
    (hK_on_BE : K ∈ line[ℝ, B, E])
    (hK_on_AC : K ∈ line[ℝ, A, C])
    (hK_ne_G : K ≠ G)
    (hB_ne_G : B ≠ G)
    : EuclideanGeometry.angle K G B = Real.pi / 2 := by 
  sorry
end EuclideanProblem
