theory MidsegmentProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r = (∃t. t ≠ 0 ∧ t ≠ 1 ∧ 
    (fst r - fst p) = t * (fst q - fst p) ∧ 
    (snd r - snd p) = t * (snd q - snd p))"
definition parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallelogram A B C D = (
    (fst B - fst A) = (fst C - fst D) ∧ 
    (snd B - snd A) = (snd C - snd D) ∧
    (fst C - fst B) = (fst D - fst A) ∧ 
    (snd C - snd B) = (snd D - snd A))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition midsegment :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "midsegment P J K M L = (P = midpoint K M ∧ J = midpoint M L)"
locale geometry_problem =
  fixes K J L M P H :: point
  assumes ML_eq_3: "dist M L = 3"
  and HP_midpoint: "H = midpoint P K" 
  and JH_midpoint: "J = midpoint L K" 
  and PJ_midpoint: "P = midpoint K M" 
theorem (in geometry_problem) value_of_x:
  "dist P J = 3/2"
proof -
  have P_def: "P = midpoint K M" by (simp add: PJ_midpoint)
  have J_def: "J = midpoint L K" by (simp add: JH_midpoint)
  have P_coord: "P = ((fst K + fst M)/2, (snd K + snd M)/2)" 
    by (simp add: midpoint_def P_def)
  have J_coord: "J = ((fst L + fst K)/2, (snd L + snd K)/2)" 
    by (simp add: midpoint_def J_def)
  have "dist P J = dist M L / 2"
    sorry 
  thus "dist P J = 3/2" using ML_eq_3 by simp
qed