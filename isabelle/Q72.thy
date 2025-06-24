theory J_Function
  imports Complex_Main
begin
fun J :: "real ⇒ real" where
  "J x = (if x ≤ -2 then 4 + x else if x ≤ 0 then -x else x)"
definition J3 :: "real ⇒ real" where
  "J3 x = J (J (J x))"
end