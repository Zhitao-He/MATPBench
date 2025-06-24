theory Quadrilateral_AC_Length
imports Main
begin
definition ab :: real where "ab = 4"  -- Length of side AB
definition bc :: real where "bc = 7"  -- Length of side BC
definition cd :: real where "cd = 10" -- Length of side CD
definition da :: real where "da = 5"  -- Length of side DA
definition possible_integer_lengths_AC :: "int set"
  where "possible_integer_lengths_AC =
           {n :: int. let ac_r = real_of_int n in
                       ac_r > abs (ab - bc) ∧ ac_r < ab + bc ∧
                       ac_r > abs (da - cd) ∧ ac_r < da + cd}"
definition num_possible_integer_lengths_AC :: nat
  where "num_possible_integer_lengths_AC = card possible_integer_lengths_AC"
end