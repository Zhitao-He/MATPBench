theory ParallelogramAngles
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ point" where
"vec A B = (fst B - fst A, snd B - snd A)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
"collinear A B C = (∃t. vec A B = scaleR t (vec A C) ∧ t ≠ 0)"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
"between A B C = (∃t. t > 0 ∧ t < 1 ∧ B = (fst A + t * (fst C - fst A), snd A + t * (snd C - snd A)))"
definition parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"parallelogram A B C D = (vec A B = vec D C ∧ vec A D = vec B C)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
"on_circle P O r = ((fst P - fst O)^2 + (snd P - snd O)^2 = r^2)"
definition on_circumcircle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"on_circumcircle P A B C = (
  let O = circumcenter A B C;
      r = sqrt((fst A - fst O)^2 + (snd A - snd O)^2)
  in on_circle P O r)"
definition intersection :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"intersection A B C D G = (collinear A B G ∧ collinear C D G ∧ G ≠ A ∧ G ≠ B ∧ G ≠ C ∧ G ≠ D)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
"angle A O B = (
  let v1 = vec O A;
      v2 = vec O B;
      dot = fst v1 * fst v2 + snd v1 * snd v2;
      det = fst v1 * snd v2 - snd v1 * fst v2
  in arctan2 det dot)"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
"circumcenter A B C = undefined" 
theorem geometry_parallelogram_angle_equality:
  fixes A B C D E F G H O P :: point
  assumes parallelogram_ABCD: "parallelogram A B C D"
      and E_on_AD: "between A E D"
      and F_on_CD: "between C F D"
      and G_intersection: "intersection A F C E G"
      and O_is_circumcenter_AEG: "let O = circumcenter A E G in
                               on_circle A O (sqrt((fst A - fst O)^2 + (snd A - snd O)^2)) ∧
                               on_circle E O (sqrt((fst A - fst O)^2 + (snd A - snd O)^2)) ∧ 
                               on_circle G O (sqrt((fst A - fst O)^2 + (snd A - snd O)^2))"
      and P_is_circumcenter_CFG: "let P = circumcenter C F G in
                               on_circle C P (sqrt((fst C - fst P)^2 + (snd C - fst P)^2)) ∧
                               on_circle F P (sqrt((fst C - fst P)^2 + (snd C - fst P)^2)) ∧ 
                               on_circle G P (sqrt((fst C - fst P)^2 + (snd C - fst P)^2))"
      and H_on_both_circles: "let O = circumcenter A E G;
                              P = circumcenter C F G;
                              r1 = sqrt((fst A - fst O)^2 + (snd A - snd O)^2);
                              r2 = sqrt((fst C - fst P)^2 + (snd C - fst P)^2)
                           in on_circle H O r1 ∧ on_circle H P r2 ∧ H ≠ G"
  shows "angle G B A = angle H D A"
  sorry