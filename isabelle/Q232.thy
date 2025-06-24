theory Not_One_To_One
  imports Complex_Main
begin
definition ellipse :: "(real × real) set" where
  "ellipse = { (x, y). ((x + 2)^2) / 1^2 + ((y - 1)^2) / 2^2 = 1 }"
definition f :: "(real × real) ⇒ real" where
  "f p = fst p"
definition f_on_ellipse :: "(real × real) ⇒ real ⇒ bool" where
  "f_on_ellipse p y ≡ p ∈ ellipse ∧ y = f p"
theorem not_injective:
  "¬ (∀ p1 p2 y. f_on_ellipse p1 y ∧ f_on_ellipse p2 y ⟶ p1 = p2)"
proof
  assume H: "∀p1 p2 y. f_on_ellipse p1 y ∧ f_on_ellipse p2 y ⟶ p1 = p2"
  let ?p1 = "(-2, 1 + 2)"
  let ?p2 = "(-2, 1 - 2)"
  have "?p1 ∈ ellipse"
    unfolding ellipse_def by simp
  moreover have "?p2 ∈ ellipse"
    unfolding ellipse_def by simp
  moreover have "f ?p1 = -2" and "f ?p2 = -2"
    unfolding f_def by simp_all
  hence "f_on_ellipse ?p1 (-2)" and "f_on_ellipse ?p2 (-2)"
    unfolding f_on_ellipse_def using calculation by simp_all
  moreover have "?p1 ≠ ?p2" by simp
  ultimately show False
    using H by blast
qed
end