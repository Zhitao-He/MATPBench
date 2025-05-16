theory Triangular_Array
imports Main "HOL-Library.Sum_of_Divisors"
begin
definition n_rows :: nat where "n_rows = 50"
fun T :: "nat ⇒ nat ⇒ nat" where
  "T 0 j = 2 * j + 1" |
  "T (Suc i) j = T i j + T i (j + 1)"
definition in_triangle :: "nat ⇒ nat ⇒ bool" where
  "in_triangle i j = (i < n_rows ∧ j < n_rows - i)"
definition divides :: "nat ⇒ nat ⇒ bool" (infixl "dvd" 50) where
  "a dvd b = (∃k. b = a * k)"
theorem putnam_2003_a2:
  "card {(i, j). i < n_rows ∧ j < n_rows - i ∧ 67 dvd (T i j)} = 17"
  sorry