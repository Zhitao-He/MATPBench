import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open scoped Real

namespace InscribedTriangleTheorem

-- Let V be a real vector space and P a 2D Euclidean affine plane modeled on V
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]

-- Given points
variable (A B C O I J K D F G : P)

-- A, B, C are distinct and not collinear
variable (h_ABC_distinct : A ≠ B ∧ B ≠ C ∧ C ≠ A)
variable (h_ABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))

-- O is the circumcenter of triangle ABC
variable (h_O_circum : O = circumcenter ℝ (mkTriangle A B C))

-- J is the foot of the perpendicular from I to AB (orthogonal projection)
variable (h_J_proj : J = orthogonalProjection (affineSpan ℝ {A, B}) I)
variable (h_J_on_AB : J ∈ segment ℝ A B)

-- K is the foot of the perpendicular from I to AC
variable (h_K_proj : K = orthogonalProjection (affineSpan ℝ {A, C}) I)
variable (h_K_on_AC : K ∈ segment ℝ A C)

-- D is the second intersection of line AO with circle O (other than A)
variable (h_D_on_line : D ≠ A ∧ Collinear ℝ ({A, O, D} : Set P))
variable (h_D_on_circum : dist D O = dist A O)

-- F is a point on the extension of CA such that AF = BJ
variable (h_Sbtw_CAF : Sbtw ℝ C A F)
variable (h_AF_eq_BJ : dist A F = dist B J)

-- G is intersection of:
--   (1) The perpendicular to DI through F
--   (2) The extension of BA (B, A, G are collinear and A between B and G)
variable (h_DI_distinct : D ≠ I)
variable (h_G_on_BA_ext : Sbtw ℝ B A G)
variable (h_G_perp : ∃ (t : ℝ), G = F + t • (orthogonalProjection (affineSpan ℝ {D, I}) F - F) 
  ∧ ⟪(G -ᵥ F), (I -ᵥ D)⟫_ℝ = 0)

-- Conclusion: AG = CK
theorem AG_eq_CK : dist A G = dist C K := by sorry

end InscribedTriangleTheorem