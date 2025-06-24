theory Cylinder_Volume_Calculation
  imports Complex_Main 
begin
definition radius :: real where
  "radius = 6"
definition height :: real where
  "height = 8"
definition cylinder_volume :: "real => real => real" where
  "cylinder_volume r h = pi * (r^2) * h"
definition V_cylinder :: real where
  "V_cylinder = cylinder_volume radius height"
lemma volume_symbolic_form:
  "V_cylinder = 288 * pi"
  unfolding V_cylinder_def cylinder_volume_def radius_def height_def
  by simp 
    val V_approx = Real.approx_real 10 (Proof_Context.eval_term ctxt V_term);
    val _ = tracing ("Approximate V_cylinder (10 dp): " ^ Real.string_of_real V_approx);
  *}
*)
end