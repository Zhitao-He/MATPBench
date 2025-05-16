import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

open EuclideanGeometry

namespace TriangleCirclesAngles

variable {P : Type*} [EuclideanPlane P]

variable {A B C D E F G : P}

/-- A, B, C are not collinear: triangle is nondegenerate -/
variable (hABC_noncollinear : ¬ Collinear ℝ A B C)

/-- D ∈ AB, E ∈ AC, DE ∥ BC -/
variable (hD_on_AB : D ∈ lineThrough A B)
variable (hE_on_AC : E ∈ lineThrough A C)
variable (hDE_parallel_BC : (lineThrough D E) ∥ (lineThrough B C))

/-- F ∈ BE ∩ CD -/
variable (hF_on_BE : F ∈ lineThrough B E)
variable (hF_on_CD : F ∈ lineThrough C D)

/-- B, D, F not collinear so circumcircle exists; C, E, F not collinear -/
variable (hBDF_noncollinear : ¬ Collinear ℝ B D F)
variable (hCEF_noncollinear : ¬ Collinear ℝ C E F)

/-- Circles O = circumscribed about BDF, P = circumscribed about CEF -/
def circleO : Affine.Sphere P :=
  circumcircle B D F hBDF_noncollinear

def circleP : Affine.Sphere P :=
  circumcircle C E F hCEF_noncollinear

/-- G second (≠ F) intersection point of circleO and circleP -/
variable (hG_ne_F : G ≠ F)
variable (hG_on_circleO : G ∈ circleO)
variable (hG_on_circleP : G ∈ circleP)

/-- For the angle statement to make sense, A ≠ F, A ≠ G -/
variable (hA_ne_F : A ≠ F)
variable (hA_ne_G : A ≠ G)

/-- Main theorem: ∠BAF = ∠CAG -/
theorem angle_BAF_eq_angle_CAG :
    angle B A F = angle C A G := by
  sorry

end TriangleCirclesAngles