theory Skaters
imports Complex_Main
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (100, 0)"
definition speed_A :: "real" where "speed_A = 8"
definition speed_B :: "real" where "speed_B = 7"
definition angle_A :: "real" where "angle_A = 60 * (pi / 180)"
definition pos_A :: "real ⇒ real × real" where
  "pos_A t = (fst A + speed_A * t * cos angle_A, snd A + speed_A * t * sin angle_A)"
definition pos_B :: "real ⇒ real ⇒ real × real" where
  "pos_B t angle_B = (fst B + speed_B * t * cos angle_B, snd B + speed_B * t * sin angle_B)"
definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition meet :: "real ⇒ real ⇒ bool" where
  "meet t angle_B = (distance (pos_A t) (pos_B t angle_B) = 0)"
definition optimal_angle :: "real" where
  "optimal_angle = SOME angle_B. ∃t>0. meet t angle_B ∧ 
    (∀angle_B'. ∀t'>0. meet t' angle_B' ⟶ t ≤ t')"
definition allie_distance :: "real ⇒ real" where
  "allie_distance t = speed_A * t"
theorem allie_skates_160_meters:
  "∃t>0. meet t optimal_angle ∧ allie_distance t = 160"