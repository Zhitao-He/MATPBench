theory AreaOfQuadrilateral
  imports Complex_Main "HOL-Analysis.Analysis"
begin
definition C :: "real × real" where "C = (0, 0)"
definition B :: "real × real" where "B = (20, 0)"
definition E :: "real × real" where "E = (0, 24)"
definition A :: "real × real" where "A = (20, 24)"
definition area_ACBD :: "real" where
  "area_ACBD = 20 * 24"
lemma area_ACBD_value: "area_ACBD = 480"
  by (simp add: area_ACBD_def)