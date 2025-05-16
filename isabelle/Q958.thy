theory Incircle_Midpoint_Theorem
imports
  Main
  "HOL-Analysis.Analysis"
  "HOL-Algebra.Polynomials"
begin
locale triangle_with_incircle =
  fixes A B C :: "real × real"
  assumes non_collinear_ABC: "¬ collinear {A, B, C}"
context triangle_with_incircle
begin
definition I :: "real × real" where
  "I = incenter A B C"
definition r :: real where
  "r = inradius A B C"
definition D :: "real × real" where
  "D = tangency_point I r B C"
definition AD_line :: "(real × real) set" where
  "AD_line = line A D"
definition E :: "real × real" where
  "E = intersection_point (parallel_line_through I AD_line) (line B C)"
definition tangent_at_E :: "(real × real) set" where
  "tangent_at_E = tangent_line I r E"
definition F :: "real × real" where
  "F = intersection_point tangent_at_E (line A B)"
definition G :: "real × real" where
  "G = intersection_point tangent_at_E (line A C)"
theorem incircle_midpoint_FGE: "E = midpoint F G"
  sorry