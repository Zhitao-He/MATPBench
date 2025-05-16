theory SemiCircleCrescents
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition leg1 :: "real" where "leg1 = 6"
definition leg2 :: "real" where "leg2 = 8"
definition hyp :: "real" where "hyp = sqrt (leg1^2 + leg2^2)"
definition semicircle_area :: "real ⇒ real" where
  "semicircle_area d = (pi * (d/2)^2) / 2"
(* 
  Right triangle with legs leg1 and leg2, and hypotenuse hyp.
  Semicircles are constructed on each side.
  The semicircle on the hypotenuse is shaded.
  The two crescent-shaped regions are the portions of the semicircles on the legs 
  lying outside the shaded semicircle.
  The total area of these two non-shaded crescent-shaped regions equals 24.
*)
theorem semicircle_crescents_area:
  "semicircle_area leg1 + semicircle_area leg2 - semicircle_area hyp = 24"
  sorry