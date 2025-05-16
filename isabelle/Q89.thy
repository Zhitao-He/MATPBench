theory TriangleSegmentProduct
imports Main HOL.Real Complex_Main "HOL-Analysis.Euclidean_Space"
begin
lemma triangle_segment_product:
  fixes A B C P :: "real^2"
    and a b c d :: real
  assumes "~collinear {A, B, C}"  
    and "inside_triangle A B C P"  
    and "a + b + c = 43"  
    and "d = 3"  
    and segment_relations: "∃Q R S. 
        on_line Q B C ∧ collinear A P Q ∧ dist B Q = c ∧ dist Q C = d ∧
        on_line R A C ∧ collinear B P R ∧ dist C R = a ∧ dist R A = d ∧
        on_line S A B ∧ collinear C P S ∧ dist A S = b ∧ dist S B = d"
  shows "a * b * c = 441"  
definition on_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "on_line P A B ≡ ∃t. P = A + t *\<^sub>R (B - A) ∧ 0 ≤ t ∧ t ≤ 1"
definition collinear :: "real^2 set ⇒ bool" where
  "collinear S ≡ ∃l. ∀x∈S. ∃t. x = fst l + t *\<^sub>R (snd l - fst l)"
definition collinear3 :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "collinear3 A B C ≡ collinear {A, B, C}"
definition dist :: "real^2 ⇒ real^2 ⇒ real" where
  "dist A B = norm (B - A)"
definition inside_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "inside_triangle A B C P ≡ 
    ∃a b c. a > 0 ∧ b > 0 ∧ c > 0 ∧ a + b + c = 1 ∧ P = a *\<^sub>R A + b *\<^sub>R B + c *\<^sub>R C"