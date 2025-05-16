import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.PerpendicularFoot
import Mathlib.Geometry.Euclidean.Sphere.Basic

open EuclideanGeometry

namespace IncircleCircumcircleTangency

-- Let P be the Euclidean plane.
variable {P : Type*} [EuclideanPlane P]

-- The triangle vertices
variable (A B C : P)

-- The triangle is nondegenerate
variable (hABC_noncol : ¬ Collinear ℝ A B C)

-- The incircle's center (I) and radius (rI)
variable (I : P) (rI : ℝ)
variable (hI_incenter : I = Triangle.incenter ℝ A B C)
variable (hrI_inradius : rI = Triangle.inradius ℝ A B C hABC_noncol)
variable (hrI_pos : rI > 0)

-- The incircle ⊙I
def incircleI : Sphere P := { center := I, radius := rI }

-- D is the point of tangency of the incircle with BC.
variable (D : P)
variable (hD_on_BC : D ∈ line[P, B, C])
variable (hD_on_incircle : D ∈ incircleI A B C I rI)
variable (h_ID_perp_BC : Module.Orthogonal ℝ (D -ᵥ I) (C -ᵥ B))

-- E is the foot of the perpendicular from A to BC: AE ⟂ BC, E on BC
variable (E : P)
variable (hE_is_foot : E = perpFoot A (line[P, B, C]))
-- F is the midpoint of AE
variable (F : P)
variable (hF_mid : F = midpoint ℝ A E)

-- G is the second intersection point of DF with the incircle, G ≠ D
variable (G : P)
variable (hG_collinear : ∃ t : ℝ, t ≠ 0 ∧ G = D +ᵥ t • (F -ᵥ D))
variable (hG_on_incircle : G ∈ incircleI A B C I rI)
variable (hG_ne_D : G ≠ D)

-- Circumcircle ⊙O of triangle B C G; center O, radius rO
variable (O : P) (rO : ℝ)
variable (hB_C_G_noncol : ¬ Collinear ℝ B C G)
variable (hO_is_circumcenter : O = Triangle.circumcenter ℝ B C G hB_C_G_noncol)
variable (hrO_radius : rO = dist O B)
variable (hrO_pos : rO > 0)

def circumcircle_BCG : Sphere P := { center := O, radius := rO }

variable (hG_on_circumcircle : G ∈ circumcircle_BCG A B C I rI D E F G O rO)

-- Tangency at G: the two circles are tangent at G if:
-- 1. G ∈ incircleI, G ∈ circumcircle_BCG
-- 2. The centers I, O, and G are collinear.
def tangent_at_pt (S₁ S₂ : Sphere P) (p : P) : Prop :=
  p ∈ S₁ ∧ p ∈ S₂ ∧ Collinear ℝ S₁.center S₂.center p

theorem incircle_circumcircle_tangent_at_G :
  tangent_at_pt (incircleI A B C I rI) (circumcircle_BCG A B C I rI D E F G O rO) G :=
by
  sorry

end IncircleCircumcircleTangency