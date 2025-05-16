theory ParallelogramTheorem
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
locale parallelogram_theorem =
  fixes A B C D E F G O :: "real^2"
  assumes parallelogram_ABCD: "D - A = C - B"
          and "B - A = D - C" (* Parallelogram condition *)
          and O_def: "∃t. O = A + t *R (C - A)" (* O on AC *)
          and O_def2: "∃s. O = B + s *R (D - B)" (* O on BD *)
          and E_on_ED: "∃u. E = E + u *R (D - E)" (* E on ED *)
          and E_perp_CE_ED: "(C - E) ⋅ (E - D) = 0" (* CE ⊥ ED *)
          and F_on_AC: "∃v. F = A + v *R (C - A)" (* F on AC *)
          and F_perp_DF_AC: "(D - F) ⋅ (C - A) = 0" (* DF ⊥ AC *)
          and G_on_FE: "∃t. G = E + t *R (F - E)" (* G on FE *)
          and G_on_extBA: "∃s. s < 0 ∧ G = A + s *R (B - A)" (* G on extension of BA *)
lemma diagonal_intersection:
  assumes "D - A = C - B" and "B - A = D - C"
  shows "∃t s. t ∈ {0..1} ∧ s ∈ {0..1} ∧ 
             A + t *R (C - A) = B + s *R (D - B)"
  sorry (* Proof omitted *)
theorem GO_perp_AD:
  shows "(G - O) ⋅ (D - A) = 0" (* GO ⊥ AD *)
  sorry (* Proof omitted *)