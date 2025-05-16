theory CircleThroughTriangleVertices
imports Complex_Main
begin
definition L1 :: "real × real ⇒ bool" where
  "L1 p ⟷ snd p = -fst p - 1"
definition L2 :: "real × real ⇒ bool" where
  "L2 p ⟷ fst p = 2"
definition L3 :: "real × real ⇒ bool" where
  "L3 p ⟷ snd p = fst p / 5 + 13/5"
definition P1 :: "real × real" where
  "P1 = (2, -3)"
definition P2 :: "real × real" where
  "P2 = (2, 21/5)"
definition P3 :: "real × real" where
  "P3 = (-9/2, 7/2)"
lemma "L1 P1 ∧ L2 P1"
  unfolding L1_def L2_def P1_def
  by auto
lemma "L2 P2 ∧ L3 P2"
  unfolding L2_def L3_def P2_def
  by auto
lemma "L1 P3 ∧ L3 P3"
  unfolding L1_def L3_def P3_def
  by auto
definition circle :: "real ⇒ real ⇒ real ⇒ real ⇒ real × real ⇒ bool" where
  "circle a b c d p ⟷ a * ((fst p)² + (snd p)²) + b * (fst p) + c * (snd p) + d = 0"
theorem circle_through_triangle_vertices_exists:
  "∃a b c d. a ≠ 0 ∧ 
    circle a b c d P1 ∧
    circle a b c d P2 ∧ 
    circle a b c d P3"
proof -
  let ?a = "1::real"
  let ?eq1 = "(fst P1)² + (snd P1)² * ?a + b * (fst P1) + c * (snd P1) + d = 0"
  let ?eq2 = "(fst P2)² + (snd P2)² * ?a + b * (fst P2) + c * (snd P2) + d = 0"
  let ?eq3 = "(fst P3)² + (snd P3)² * ?a + b * (fst P3) + c * (snd P3) + d = 0"
  have "∃b c d. circle ?a b c d P1 ∧ circle ?a b c d P2 ∧ circle ?a b c d P3"
  proof
    let ?b = "-8.5::real"
    let ?c = "-2.5::real"
    let ?d = "36.125::real"
    show "circle ?a ?b ?c ?d P1 ∧ circle ?a ?b ?c ?d P2 ∧ circle ?a ?b ?c ?d P3"
      unfolding circle_def P1_def P2_def P3_def
      by (auto simp: algebra_simps)
  qed
  thus ?thesis by auto
qed