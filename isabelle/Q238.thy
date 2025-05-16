theory NonInvertibleFunction
imports Complex_Main "HOL-Library.Real_Vector_Spaces"
begin
context
  fixes f :: "real ⇒ real"
  assumes exists_triple: "∃a1 a2 a3. a1 < a2 ∧ a2 < a3 ∧ f a1 = f a3 ∧ f a1 ≠ f a2"
begin
theorem graph_not_invertible:
  "¬(∃g::real ⇒ real. ∀x. f (g x) = x ∧ g (f x) = x)"
proof
  assume "∃g::real ⇒ real. ∀x. f (g x) = x ∧ g (f x) = x"
  then obtain g where g_def: "∀x. f (g x) = x ∧ g (f x) = x" by auto
  from exists_triple obtain a1 a2 a3 where
    triple_props: "a1 < a2" "a2 < a3" "f a1 = f a3" "f a1 ≠ f a2"
    by auto
  from g_def have "g (f a1) = a1" by auto
  moreover from g_def have "g (f a3) = a3" by auto
  moreover from triple_props have "f a1 = f a3" by auto
  ultimately have "a1 = a3" by auto
  with triple_props(1,2) show False by auto
qed