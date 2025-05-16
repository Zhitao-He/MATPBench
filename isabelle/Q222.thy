theory JewelleryPlate
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition big_radius :: "real" where "big_radius = 6"
definition small_radius :: "real" where "small_radius = 3"
definition semicircle_area :: "real ⇒ real" where 
  "semicircle_area r = (pi * r^2) / 2"
definition plate_area :: "real" where
  "plate_area = 2 * semicircle_area big_radius - 2 * semicircle_area small_radius"
lemma jewellery_plate_area:
  "abs (plate_area - 70.69) ≤ 0.005"
  oops