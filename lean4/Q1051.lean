import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

-- Use 2D euclidean space over ℝ for points
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- A circle (in ℝ²) is encoded as a sphere of dimension 2, center and positive radius
-- External tangency at point pt: pt is on both circles, the centers' distance is the sum of their (positive) radii
def ExternallyTangentAt (s1 s2 : Sphere Point ℝ) (pt : Point) : Prop :=
  pt ∈ s1 ∧ pt ∈ s2 ∧
  s1.radius > 0 ∧ s2.radius > 0 ∧
  dist s1.center s2.center = s1.radius + s2.radius

section CirclesTangentAtF

open EuclideanGeometry

variables
  (A B C O D E F P Q : Point)
  -- O is the circumcenter of triangle ABC, and A, B, C are non-collinear
  (h_ABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (h_O_circumcenter : O = circumcenter A B C)
  -- Line DC is perpendicular to AC (Angle ACD is right)
  (h_DC_perp_AC : Angle.IsRight (angle A C D))
  -- D is on extension of AB (collinear, but not between A & B)
  (h_D_on_AB_ext : ∃ t : ℝ, (t < 0 ∨ t > 1) ∧ D = A + t • (B -ᵥ A))
  -- DE ⟂ AO (direction vectors perpendicular)
  (h_DE_perp_AO : ⟪E -ᵥ D, O -ᵥ A⟫ = 0)
  -- F lies on circle O (circumcircle of ABC)
  (h_F_on_circleO : dist F O = dist A O)
  -- D, E, F collinear: F lies on line DE
  (h_DEF_collinear : Collinear ℝ ({D, E, F} : Set Point))
  -- E is on line AC
  (h_E_on_AC : E ∈ affineSpan ℝ ({A, C} : Set Point))
  -- P is circumcenter of BEF; BEF not collinear
  (h_BEF_not_collinear : ¬ Collinear ℝ ({B, E, F} : Set Point))
  (h_P_circumcenter : P = circumcenter B E F)
  -- Q is circumcenter of CDF; CDF not collinear
  (h_CDF_not_collinear : ¬ Collinear ℝ ({C, D, F} : Set Point))
  (h_Q_circumcenter : Q = circumcenter C D F)

theorem circles_P_Q_externally_tangent_at_F :
    let rP := dist B P
    let ωP : Sphere Point ℝ := { center := P, radius := rP }
    let rQ := dist C Q
    let ωQ : Sphere Point ℝ := { center := Q, radius := rQ }
    ExternallyTangentAt ωP ωQ F :=
  by
    sorry

end CirclesTangentAtF