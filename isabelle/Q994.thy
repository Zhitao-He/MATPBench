theory CircleTangencySimilarity
imports Complex_Main HOL.Real "HOL-Analysis.Analysis"
begin

locale circles_tangent_similarity =
  fixes O₁ O₂ A B C D P :: "real × real"
    and r₁ r₂ :: real
  assumes r₁_pos: "r₁ > 0"
    and r₂_pos: "r₂ > 0"
    and circle1: "dist O₁ A = r₁" "dist O₁ B = r₁" "dist O₁ C = r₁"
    and circle2: "dist O₂ A = r₂" "dist O₂ B = r₂" "dist O₂ D = r₂"
    and AB_distinct: "A ≠ B"
    and P_tangent_C: "dist P C ≠ 0" 
                     "∀Q. Q ≠ C ∧ dist O₁ Q = r₁ ⟶ angle P C Q = π/2"
    and P_tangent_D: "dist P D ≠ 0"
                     "∀Q. Q ≠ D ∧ dist O₂ Q = r₂ ⟶ angle P D Q = π/2"
    and tangent_ratio: "dist P C / dist P D = r₁ / r₂"
begin

definition similar_triangle :: "(real × real) × (real × real) × (real × real) ⟶ 
                                (real × real) × (real × real) × (real × real) ⟶ bool" where
  "similar_triangle T₁ T₂ ≡ 
    let (P₁, Q₁, R₁) = T₁; (P₂, Q₂, R₂) = T₂ in
    (∃k > 0. dist P₁ Q₁ / dist P₂ Q₂ = k ∧ 
             dist Q₁ R₁ / dist Q₂ R₂ = k ∧ 
             dist R₁ P₁ / dist R₂ P₂ = k) ∧
    angle P₁ Q₁ R₁ = angle P₂ Q₂ R₂ ∧
    angle Q₁ R₁ P₁ = angle Q₂ R₂ P₂ ∧
    angle R₁ P₁ Q₁ = angle R₂ P₂ Q₂"

theorem circle_tangent_triangle_similarity:
  "similar_triangle (P, C, A) (P, D, B)"
  oops

end
end