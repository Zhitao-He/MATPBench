theory DashedLineEquation
imports Complex_Main
begin

(* Define the function g(x) = -x² *)
definition g :: "real ⇒ real" where
  "g x = -(x^2)"

(* Theorem stating the equation of the dashed line *)
theorem dashed_line_equation:
  "∀x. g x = -(x^2)"
  by (simp add: g_def)

end