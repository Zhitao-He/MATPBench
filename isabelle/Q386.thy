theory Shaded_Area
  imports Main
begin
definition is_consecutive_integers :: "int ⇒ int ⇒ int ⇒ bool" where
  "is_consecutive_integers x y z ≡ ∃n::int. {x, y, z} = {n, n + 1, n + 2}"
definition area_shaded :: "int ⇒ int ⇒ int" where
  "area_shaded val_a val_b ≡ 2 * val_a * val_b"
lemma problem_statement:
  fixes a b c :: int
  assumes positive_lengths: "a > 0 ∧ b > 0 ∧ c > 0"
  assumes consecutive_integers: "is_consecutive_integers a b c"
  assumes c_is_hypotenuse: "c > a ∧ c > b"
  assumes pythagorean_relationship: "a*a + b*b = c*c"
  shows "area_shaded a b = 24"
end