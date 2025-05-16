theory J_Triple_Function
  imports Main "HOL-Analysis.Analysis"
begin

definition J :: "real ⇒ real" where
  "J x = (if x ≤ -2 then 4 + x 
          else if x ≤ 0 then -x 
          else x)"

theorem J_triple_root_count:
  "card {x::real. J (J (J x)) = 0} = 4"
sorry

end