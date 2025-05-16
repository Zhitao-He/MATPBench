theory ElectricField
  imports Complex_Main "HOL-Analysis.Analysis"
begin
definition pi :: real where "pi = π"
definition eps0 :: real where "eps0 = 8.854187817 * (10 powr (-12))" 
definition R1 :: real where "R1 = 1.30 * (10 powr (-3))" 
definition L :: real where "L = 11.00" 
definition R2 :: real where "R2 = 10.0 * R1" 
definition Q1 :: real where "Q1 = 3.40 * (10 powr (-12))" 
definition Q2 :: real where "Q2 = -2.00 * Q1" 
definition r :: real where "r = 2.00 * R2" 
definition electric_field_magnitude :: real where
  "electric_field_magnitude = (Q1 + Q2) / (2 * pi * eps0 * L * r)"
lemma electric_field_value:
  shows "electric_field_magnitude = 0.21"
  using [[simp_trace_new mode=full]]
  by (simp add: electric_field_magnitude_def Q1_def Q2_def R1_def R2_def r_def L_def pi_def eps0_def)
  