variable (x : ℝ)

/--
Given a rectangle DEFG where:
  DE = 14 + 2x,
  GF = 4 * (x - 3) + 6,
and knowing that opposite sides of a rectangle are equal,
show that GF = 34.
-/
theorem rectangleGF_eq_34
    (hDE : 14 + 2 * x = 4 * (x - 3) + 6) :
    4 * (x - 3) + 6 = 34 := by
  sorry