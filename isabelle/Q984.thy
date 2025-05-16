theory CircumcircleTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
(* Basic geometric definitions *)
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (
    (fst B - fst A) * (snd C - snd A) = (snd B - snd A) * (fst C - fst A)
  )"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B) / 2, (snd A + snd B) / 2)"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint G A B ⟷ G = midpoint A B"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P = (distance O P = r)"
(* Line definitions *)
definition line_through :: "point ⇒ point ⇒ point ⇒ bool" where
  "line_through A B P = (∃t. P = (fst A + t * (fst B - fst A), 
                               snd A + t * (snd B - snd A)))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = (
    (fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0
  )"
definition foot_of_perpendicular :: "point ⇒ point ⇒ point ⇒ point" where
  "foot_of_perpendicular I D E = (
    let 
      vx = fst E - fst D;
      vy = snd E - snd D;
      t = (vx * (fst I - fst D) + vy * (snd I - snd D)) / (vx^2 + vy^2)
    in
      (fst D + t * vx, snd D + t * vy)
  )"
(* Theorem statement *)
theorem circumcircle_midpoint:
  fixes O A B C I E D F G :: point
  fixes r :: real
  assumes "¬ collinear A B C"
  and "on_circle O r A ∧ on_circle O r B ∧ on_circle O r C" (* O is circumcircle of triangle ABC *)
  and "I = incenter A B C" (* I is the incenter of triangle ABC *)
  and "E = excenter A B C" (* E is an excenter of triangle ABC *)
  and "line_through B C D" (* D is on the extension of BC *)
  and "exterior_angle_bisector A B C D" (* D is on the exterior angle bisector of ∠BAC *)
  and "F = foot_of_perpendicular I D E" (* F is foot of perpendicular from I to DE *)
  and "line_through I F G" (* G is on line IF *)
  and "on_circle O r G" (* G is on the circumcircle *)
  shows "is_midpoint G I F"
sorry