theory Function_G
imports Complex_Main
begin
definition g :: "real ⇒ real" where
  "g x = (x + 2)^2 + 1"
theorem graph_g_characterization:
  "∀x y. y = g x ⟷ y = (x + 2)^2 + 1"
  by (simp add: g_def)