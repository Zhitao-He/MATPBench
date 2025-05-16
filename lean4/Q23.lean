import Mathlib.Data.Real.Basic

-- Define the piecewise function f(x) based on the problem description.
-- f(x) = x + 3   if x < 1
-- f(x) = (x - 2)^2 if x ≥ 1
def f (x : ℝ) : ℝ :=
  if x < 1 then x + 3 else (x - 2)^2

-- Theorem: The limit of f(x) as x approaches 1 from the left side is 4.
-- `Filter.Tendsto f L l'` means f(x) tends to l' as x tends to L.
-- `Filter.nhdsWithin 1 (Set.Iio 1)` represents the filter for "x approaches 1 from the left".
--   - `Filter.nhds 1` is the neighborhood filter of 1.
--   - `Set.Iio 1` is the set of real numbers less than 1, i.e., the interval (-∞, 1).
--   - `Filter.nhdsWithin 1 (Set.Iio 1)` captures approaching 1 from within that interval.
-- `Filter.nhds 4` represents the neighborhood filter of 4, the limit value.
theorem limit_of_f_at_1_from_left_is_4 :
    Filter.Tendsto f (Filter.nhdsWithin 1 (Set.Iio 1)) (Filter.nhds 4) := by
  sorry