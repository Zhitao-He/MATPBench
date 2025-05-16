theory IncircleCircumcircleTangency
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
(* Define a type for points in the 2D Euclidean plane *)
type_synonym point = "real × real"
(* Define basic geometric concepts *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst q - fst p)^2 + (snd q - snd p)^2)"
definition collinear :: "point set ⇒ bool" where
  "collinear ps = (∃l. ∀p∈ps. ∃a b c. a*fst p + b*snd p + c = 0 ∧ (a,b) ≠ (0,0))"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B = (∃t. P = (1-t) *⇩R A + t *⇩R B)"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle C r P = (distance C P = r)"
definition tangent_at :: "point ⇒ real ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "tangent_at C r P A B = (on_circle C r P ∧ on_line P A B ∧
    (∀Q. Q ≠ P ∧ on_line Q A B ⟶ distance C Q > r))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = ((fst B - fst A)*(fst D - fst C) + (snd B - snd A)*(snd D - snd C) = 0)"
definition midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "midpoint M A B = (M = ((fst A + fst B)/2, (snd A + snd B)/2))"
definition incircle_center :: "point ⇒ real ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "incircle_center I r A B C = (
    on_circle I r A ∧ 
    on_circle I r B ∧ 
    on_circle I r C ∧
    (∀P. on_circle I r P ⟶ (
      distance P A ≥ r ∧
      distance P B ≥ r ∧
      distance P C ≥ r)))"
definition circumcircle_center :: "point ⇒ real ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "circumcircle_center O r A B C = (
    on_circle O r A ∧
    on_circle O r B ∧
    on_circle O r C ∧
    (∀P. on_circle O r P ⟶ (
      distance P O = r)))"
definition tangent_circles_at :: "point ⇒ real ⇒ point ⇒ real ⇒ point ⇒ bool" where
  "tangent_circles_at C1 r1 C2 r2 P = (
    on_circle C1 r1 P ∧
    on_circle C2 r2 P ∧
    distance C1 C2 = r1 + r2 ∨ distance C1 C2 = |r1 - r2|)"
(* Theorem statement *)
theorem incircle_circumcircle_tangent:
  fixes A B C I D E F G O :: point
  fixes rI rO :: real
  assumes H_noncollinear: "¬ collinear {A, B, C}"
    and H_incircle: "incircle_center I rI A B C"
    and H_D_on_BC: "on_line D B C"
    and H_D_on_incircle: "on_circle I rI D"
    and H_tangent_incircle_BC: "tangent_at I rI D B C"
    and H_E_on_BC: "on_line E B C"
    and H_AE_perpendicular_BC: "perpendicular A E B C"
    and H_F_midpoint: "midpoint F A E"
    and H_G_on_DF: "on_line G D F"
    and H_G_on_incircle: "on_circle I rI G"
    and H_G_neq_D: "G ≠ D"
    and H_circumcircle_BCG: "circumcircle_center O rO B C G"
  shows "tangent_circles_at I rI O rO G"
sorry