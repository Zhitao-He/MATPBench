theory AccountBalance
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin

definition esteban_balance :: "real ⇒ real" where
  "esteban_balance t = 1000 * exp (0.08 * t)"

definition anna_balance :: "real ⇒ real" where
  "anna_balance t = 750 * exp (0.12 * t)"

theorem accounts_balance_at_7:
  "∃t0. abs (t0 - 7) ≤ 0.5 ∧ esteban_balance t0 = anna_balance t0"

end