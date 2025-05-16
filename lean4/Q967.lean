import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic

open scoped RealInnerProductSpace

noncomputable section

-- Given points
variable {A B C O D E F H G : EuclideanSpace ℝ (Fin 2)}

-- Definition: Four points are concyclic iff they are cospherical in ℝ^2 (i.e., on a circle)
def areConcyclicPoints (p₁ p₂ p₃ p₄ : EuclideanSpace ℝ (Fin 2)) : Prop :=
  Cospherical ({p₁, p₂, p₃, p₄} : Set (EuclideanSpace ℝ (Fin 2)))

theorem concyclic_B_H_O_G
    -- 1. Triangle ABC is not collinear
    (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set (EuclideanSpace ℝ (Fin 2))))
    -- 2. O is circumcenter of triangle ABC
    (h_O_is_circumcenter : O = circumcenter ℝ A B C)
    -- 3. D is the foot of the perpendicular from A to BC
    (h_D_on_BC : Collinear ℝ ({B, D, C} : Set (EuclideanSpace ℝ (Fin 2))))
    (h_AD_perp_BC : ⟪A -ᵥ D, C -ᵥ B⟫ = 0)
    -- 4. E is the intersection of AD and CO
    (h_E_on_AD : Collinear ℝ ({A, E, D} : Set (EuclideanSpace ℝ (Fin 2))))
    (h_E_on_CO : Collinear ℝ ({C, E, O} : Set (EuclideanSpace ℝ (Fin 2))))
    -- 5. F is the midpoint of AE
    (h_F_midpoint_AE : F = midpoint ℝ A E)
    -- 6. H is intersection of FO and BC
    (h_H_on_FO : Collinear ℝ ({F, H, O} : Set (EuclideanSpace ℝ (Fin 2))))
    (h_H_on_BC : Collinear ℝ ({B, H, C} : Set (EuclideanSpace ℝ (Fin 2))))
    -- 7. G is the intersection point on AO s.t. CG ⟂ AO
    (h_G_on_AO : Collinear ℝ ({A, G, O} : Set (EuclideanSpace ℝ (Fin 2))))
    (h_CG_perp_AO : ⟪C -ᵥ G, O -ᵥ A⟫ = 0)
    -- 8. Distinctness conditions for well-defined intersections
    (h_B_ne_C : B ≠ C)
    (h_A_ne_O : A ≠ O)
    (h_A_ne_D : A ≠ D)
    (h_C_ne_O : C ≠ O)
    (h_F_ne_O : F ≠ O)
    (h_C_ne_G : C ≠ G)
  : areConcyclicPoints B H O G := by
  sorry

end noncomputable