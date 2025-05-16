theory TrapezoidMidsegment
  imports Complex_Main
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst A - fst B)^2 + (snd A - snd B)^2)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B) / 2, (snd A + snd B) / 2)"
lemma trapezoid_midsegment:
  fixes T R V A :: point
  assumes "dist T R = 44"
  assumes "dist V A = 21"
  defines "M ≡ midpoint T V"
  defines "N ≡ midpoint R A"
  shows "dist M N = 65/2"
begin
  have "dist M N = (dist T R + dist V A) / 2" 
    by (auto simp: M_def N_def midpoint_def dist_def)
  also have "... = (44 + 21) / 2" 
    using assms(1) assms(2) by simp
  also have "... = 65 / 2" by simp
  finally show "dist M N = 65/2" by simp