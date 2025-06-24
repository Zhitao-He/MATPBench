theory Geometry_Concurrency_AI_GC_FE
  imports Complex_Main
begin
locale geometry_setup =
  fixes A B C D E F G H I O P :: "'a::euclidean_space"
  assumes
    cyclic_ABCD: "A ≠ B ∧ B ≠ C ∧ C ≠ D ∧ D ≠ A ∧ A ≠ C ∧ B ≠ D"
    and on_circle_O: "A ∈ sphere O (dist O A) ∧ B ∈ sphere O (dist O A) ∧ C ∈ sphere O (dist O A) ∧ D ∈ sphere O (dist O A)"
    and E_def: "collinear A B E ∧ collinear D C E ∧ E ≠ A ∧ E ≠ D"
    and F_def: "collinear A D F ∧ collinear B C F ∧ F ≠ A ∧ F ≠ B"
    and G_on_circum_EFC: "G ≠ E ∧ G ≠ F ∧ G ≠ C ∧ G ∈ sphere P (dist P E) ∧ G ∈ sphere O (dist O A)"
    and circumcircle_EFC: "sphere P (dist P E) = {X. dist X P = dist E P ∧ X ≠ E ∧ X ≠ F ∧ X ≠ C}"
    and H_on_AG: "collinear A G H"
    and H_on_EF: "collinear E F H"
    and I_on_HC: "collinear H C I ∧ I ≠ H ∧ I ≠ C ∧ I ∈ sphere O (dist O A)"
begin
definition concurrent :: "'a ⇒ 'a ⇒ 'a ⇒ 'a ⇒ 'a ⇒ 'a ⇒ bool"
  where "concurrent X1 X2 Y1 Y2 Z1 Z2 ≡ ∃P. collinear X1 X2 P ∧ collinear Y1 Y2 P ∧ collinear Z1 Z2 P"
theorem concurrency_AI_GC_FE:
  "concurrent A I G C F E"
  unfolding concurrent_def
  sorry
end
end