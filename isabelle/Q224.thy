theory BoatNavigation
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
definition deg2rad :: "real ⇒ real" where
  "deg2rad d = d * (pi / 180)"
definition return_bearing :: real where
  "return_bearing = deg2rad (360 - 34)"
lemma "return_bearing = deg2rad 326"
  by (simp add: return_bearing_def)