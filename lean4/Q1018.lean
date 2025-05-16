import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Data.Real.Basic

open EuclideanGeometry InnerProductSpace

namespace IncenterTangencyBisect

-- The Euclidean plane as ℝ²
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Triangle vertices
variable {A B C : Point}

-- The triangle is non-collinear
variable (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))

-- Circumcenter O and its radius rO
def O : Point := circumcenter A B C
def rO : ℝ := circumradius A B C

-- Incenter I (as variable since Mathlib4 doesn't provide incenter)
variable (I : Point)
variable (hI_incenter : -- I is incenter
  ∀ (P : Point),
    (P = A ∨ P = B ∨ P = C) →
      dist I P = let a := dist B C; b := dist A C; c := dist A B in
        (a * dist P A + b * dist P B + c * dist P C) /
        (a + b + c)
)

-- Circle J: Center J, radius rJ
variable (J : Point) (rJ : ℝ) (hrJpos : 0 < rJ)

-- Points of tangency
variable (D E F : Point)

-- D lies on segment AB and is tangent point, likewise E on AC
variable (hD_on_AB : D ∈ segment ℝ A B)
variable (hE_on_AC : E ∈ segment ℝ A C)
variable (hD_on_J : dist D J = rJ)
variable (hE_on_J : dist E J = rJ)
variable (hJD_perp_AB : (J -ᵥ D) ⟂ᵥ (B -ᵥ A))
variable (hJE_perp_AC : (J -ᵥ E) ⟂ᵥ (C -ᵥ A))

-- F is the point of internal tangency between J and O
variable (hF_on_J : dist F J = rJ)
variable (hF_on_O : dist F O = rO)
variable (hJO_dist : dist O J = rO - rJ)

-- Non-degeneracy conditions
variable (hF_ne_B : F ≠ B)
variable (hF_ne_C : F ≠ C)
variable (hF_ne_I : F ≠ I)

-- The theorem: line IF bisects angle B F C (i.e., ∠BFI = ∠IFC, unoriented)
theorem incenter_tangency_bisects :
  Angle.value (B -ᵥ F) (I -ᵥ F) = Angle.value (I -ᵥ F) (C -ᵥ F) := by
  sorry

end IncenterTangencyBisect