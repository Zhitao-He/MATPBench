theory CircleChordSecant
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale circle_problem =
  fixes A B C D E F :: "'a::euclidean_space"
  assumes circle: "∃r>0. dist A B = r ∧ dist A C = r ∧ dist A D = r ∧ dist A E = r" 
      and FB_val: "dist F B = 9"
      and FC_val: "dist F C = 6"
      and FD_val: "dist F D = 6"
      and F_on_BE: "∃t∈{0..1}. F = (1-t) *⇩R B + t *⇩R E"
      and F_on_CD: "∃t∈{0..1}. F = (1-t) *⇩R C + t *⇩R D"
theorem (in circle_problem) value_of_x:
  "dist F E = 4"
  sorry