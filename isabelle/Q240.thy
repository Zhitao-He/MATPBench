theory Logarithm_Intersection
  imports Complex_Main
begin
definition f :: "real ⇒ real" where
  "f x = -1.25 * ln (1 / x)"
definition g :: "real ⇒ real" where
  "g x = 4"
definition intersection_point :: "real ⇒ bool" where
  "intersection_point x ⟷ f x = g x"
definition intersection_solution :: "real set" where
  "intersection_solution = {x. x > 0 ∧ f x = 4}"
end