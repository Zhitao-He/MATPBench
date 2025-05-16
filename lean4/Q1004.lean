import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic

noncomputable section

open Real EuclideanGeometry

-- Work in the Euclidean plane (2D)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] (fin_dim_V_eq_two : FiniteDimensional.finrank ℝ V = 2)
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Triangle vertices
variable (A B C : P)
-- A, B, C are not collinear
variable (h_noncollinear : ¬ Collinear ℝ A B C)

-- Circumcircle of △ABC: center O, radius rO
variable (O : P) (rO : ℝ)
variable (hO_circum : O = circumcenter ℝ A B C)
variable (hrO_circum : rO = circumradius ℝ A B C)

-- Incircle of △ABC: center I, radius rI
variable (I : P) (rI : ℝ) (hrI_pos : rI > 0)

-- D, E, F are the points of tangency of the incircle with BC, CA, AB respectively
variable (D E F : P)

-- Lines for sides
def lineBC (B C : P) : AffineSubspace ℝ P := affineSpan ℝ ({B, C} : Set P)
def lineCA (C A : P) : AffineSubspace ℝ P := affineSpan ℝ ({C, A} : Set P)
def lineAB (A B : P) : AffineSubspace ℝ P := affineSpan ℝ ({A, B} : Set P)

-- D lies on segment BC, on the incircle, and is the point of tangency
variable (hD_on_BC : D ∈ segment ℝ B C)
variable (hD_on_incircle : D ∈ Sphere I rI)
variable (hD_tangent : D = orthogonalProjection (lineBC B C) I)

-- E lies on segment CA, on the incircle, and is the point of tangency
variable (hE_on_CA : E ∈ segment ℝ C A)
variable (hE_on_incircle : E ∈ Sphere I rI)
variable (hE_tangent : E = orthogonalProjection (lineCA C A) I)

-- F lies on segment AB, on the incircle, and is the point of tangency
variable (hF_on_AB : F ∈ segment ℝ A B)
variable (hF_on_incircle : F ∈ Sphere I rI)
variable (hF_tangent : F = orthogonalProjection (lineAB A B) I)

-- Circle ⊙P: center P₀, radius rP
variable (P₀ : P) (rP : ℝ) (hrP_pos : rP > 0)
-- Points J (external tangency with ⊙O), G (tangent to AB), H (tangent to AC), K (intersection with AD)
variable (J G H K : P)

-- ⊙P externally tangent to ⊙O at J
variable (hJ_on_O : J ∈ Sphere O rO)
variable (hJ_on_P : J ∈ Sphere P₀ rP)
variable (hO_P_tangent : dist O P₀ = rO + rP)

-- G on AB, on ⊙P, tangency point
variable (hG_on_AB : G ∈ lineAB A B)
variable (hG_on_P : G ∈ Sphere P₀ rP)
variable (hG_tangent : G = orthogonalProjection (lineAB A B) P₀)

-- H on AC, on ⊙P, tangency point
variable (hH_on_AC : H ∈ lineCA C A)
variable (hH_on_P : H ∈ Sphere P₀ rP)
variable (hH_tangent : H = orthogonalProjection (lineCA C A) P₀)

-- AD meets ⊙P again at K (K ≠ A)
def lineAD (A D : P) : AffineSubspace ℝ P := affineSpan ℝ ({A, D} : Set P)
variable (hK_on_AD : K ∈ lineAD A D)
variable (hK_on_P : K ∈ Sphere P₀ rP)
variable (hK_ne_A : K ≠ A)
variable (hK_unique : ∀ (M : P), M ∈ lineAD A D → M ∈ Sphere P₀ rP → M ≠ A → M = K)

-- Theorem: AJ = AK
theorem AJ_eq_AK : dist A J = dist A K := by sorry

end