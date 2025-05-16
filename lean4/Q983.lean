import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [CompleteSpace V]
variable {PMP : Type*} [MetricSpace PMP] [NormedAddTorsor V PMP]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]

open EuclideanGeometry

namespace TwoCirclesExternalTangent

variable (A B C D E F G H P Q : PMP)
variable (rP rQ : ℝ)

theorem circles_external_tangent_angle_bisector
    (hA_ne_B : A ≠ B)
    (hP_ne_Q : P ≠ Q)
    (hC_ne_D : C ≠ D)
    (hF_ne_C : F ≠ C)
    (hG_ne_D : G ≠ D)
    (hrP_pos : rP > 0)
    (hrQ_pos : rQ > 0)
    (hA_on_circleP : A ∈ Sphere P rP)
    (hA_on_circleQ : A ∈ Sphere Q rQ)
    (hB_on_circleP : B ∈ Sphere P rP)
    (hB_on_circleQ : B ∈ Sphere Q rQ)
    (hC_on_circleP : C ∈ Sphere P rP)
    (hD_on_circleQ : D ∈ Sphere Q rQ)
    (hCD_tangent_P_at_C : inner (P -ᵥ C) (D -ᵥ C) = (0 : ℝ))
    (hCD_tangent_Q_at_D : inner (Q -ᵥ D) (C -ᵥ D) = (0 : ℝ))
    (hE_on_extension_BA : ∃ (t : ℝ) (_ : t > 1), E = B +ᵥ t • (A -ᵥ B))
    (hE_ne_C : E ≠ C)
    (hE_ne_D : E ≠ D)
    (hF_on_line_EC : Collinear ℝ ({E, C, F} : Set PMP))
    (hF_on_circleP : F ∈ Sphere P rP)
    (hG_on_line_ED : Collinear ℝ ({E, D, G} : Set PMP))
    (hG_on_circleQ : G ∈ Sphere Q rQ)
    (hH_on_segment_FG : Sbtw ℝ F H G)
    (hAH_bisects_angle_FAG : ∠ F A H = ∠ H A G) :
    ∠ F C H = ∠ G D H := by sorry

end TwoCirclesExternalTangent