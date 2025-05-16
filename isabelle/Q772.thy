theory CircleAngleProblem
imports Complex_Main "HOL-Algebra.Real_Vector_Spaces"
begin
type_synonym point = "real × real"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
"on_circle P C r ≡ (fst P - fst C)^2 + (snd P - snd C)^2 = r^2"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
"angle B A C = undefined" 
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"perpendicular A B C D ≡ angle A B C = 90"
fixes A B C D E :: point
fixes r :: real
assumes center: "A = (0, 0)" 
assumes circle_points: "on_circle B A r" "on_circle C A r" "on_circle D A r" "on_circle E A r"
assumes perp_CA_BA: "angle C A B = 90" 
assumes angle_BAD: "angle B A D = 65"
assumes angle_DAE: "angle D A E = 110"
definition x :: real where "x = angle E A C"
theorem "x = 95"
proof -
  have "angle C A B = 90" using perp_CA_BA by simp
  have "x = 95"
    unfolding x_def using `angle C A E = 265`
    by (metis angle_full_circle)
  thus "x = 95" by simp
qed