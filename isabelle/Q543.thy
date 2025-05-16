theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition on_circle :: "point ⇒ point ⇒ bool" where
  "on_circle center p = (∃r. r > 0 ∧ dist center p = r)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p1 p2 p3 = (
    let v1 = (fst p2 - fst p1, snd p2 - snd p1);
        v2 = (fst p3 - fst p1, snd p3 - sst p1)
    in ∃t. v2 = (t * fst v1, t * snd v1))"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between p1 p2 p3 = (
    collinear p1 p2 p3 ∧
    dist p1 p3 = dist p1 p2 + dist p2 p3)"
locale geometry_diagram =
  fixes J K L M N A :: point
  assumes 
    circle: "on_circle A J" "on_circle A K" "on_circle A M" "on_circle A N"
    and JK: "dist J K = 12"
    and LK: "dist L K = 2"
    and MN: "dist M N = 6"
    and NML: "collinear N M L ∧ between N M L"
    and MKL: "between M K L"
context geometry_diagram
begin
definition x :: real where "x = dist M L"
lemma circle_power:
  assumes "on_circle A J" "on_circle A K" "on_circle A M" "on_circle A N"
      and "collinear N M L" "between N M L" "between M K L"
  shows "dist M L * dist M N = dist M K * dist M J"
theorem value_of_x: "x = -3 + sqrt 37"
  unfolding x_def
  sorry