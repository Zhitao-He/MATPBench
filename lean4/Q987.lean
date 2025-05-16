import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Data.Real.Basic

noncomputable section IncircleCircumcircleTangency

open EuclideanGeometry

-- Points in the Euclidean plane over ℝ
abbrev PPoint := EuclideanPlane ℝ

-- Points of the configuration
variable {P : Type*} [EuclideanSpace ℝ P] [FiniteDimensional ℝ P]
  [Fact (finrank ℝ P = 2)] (A B C D E F G I O : P)

-- Triangle ABC is nondegenerate
variable (hABC : AffineIndependent ℝ ![A, B, C])

-- D is the contact point of the incircle with BC
variable (rI : ℝ)
variable (hI_incenter : I = (affineSpan ℝ {A, B, C}).incenter hABC)
variable (hD_on_BC : D ∈ line[B, C])
variable (hD_on_incircle : dist I D = rI)
variable (h_incircle_tangent_BC : (I -ᵥ D) ⟂ᵥ (C -ᵥ B))

-- E is the foot of the altitude from A onto BC
variable (hE_foot : E = orthogonalProjection (line[B, C]) A)

-- F is the midpoint of AE
variable (hF_mid : F = midpoint ℝ A E)

-- G is the second intersection of DF with the incircle, G≠D
variable (hG_on_DF : G ∈ line[D, F])
variable (hG_on_incircle : dist I G = rI)
variable (hG_ne_D : G ≠ D)

-- O is the circumcenter of triangle BCG
variable (hBCG : AffineIndependent ℝ ![B, C, G])
variable (hO_circumcenter : O = (affineSpan ℝ {B, C, G}).circumcenter hBCG)
variable (rO : ℝ)
variable (hO_radius : rO = dist O B)

-- The theorem statement: O, I, and G are collinear (sufficient condition for tangency at G)
theorem incircle_circumcircle_tangent_at_G :
    Collinear ℝ ({O, I, G} : Set P) := by
  sorry

end IncircleCircumcircleTangency