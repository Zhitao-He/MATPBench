theory RegularPentagonAngle
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition midpoint :: "complex ⇒ complex ⇒ complex" where
  "midpoint A B = (A + B) / 2"
definition regular_pentagon :: "complex set" where
  "regular_pentagon = {z. ∃k. k ∈ {0..<5} ∧ z = exp (2 * pi * k * Complex.i / 5)}"
definition angle_deg :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "angle_deg A B C = cmod (arg((C - B) / (A - B))) * (180 / pi)"
theorem pentagon_angle_XQS:
  assumes "P ∈ regular_pentagon" 
      and "Q ∈ regular_pentagon"
      and "R ∈ regular_pentagon"
      and "S ∈ regular_pentagon"
      and "T ∈ regular_pentagon"
      and "distinct [P, Q, R, S, T]"
      and "X = midpoint S T"
    shows "angle_deg X Q S = 18"
sorry