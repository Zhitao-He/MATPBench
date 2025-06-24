theory Geometry_IntersectingChords
imports Main
begin
locale problem_setup =
  fixes P Q R S T A :: "'a"
  fixes length_PQ :: real
  fixes length_PS :: real 
  fixes length_RP :: real
  fixes length_TP :: real
  assumes given_PQ: "length_PQ = 6"
  assumes given_RP: "length_RP = 15"
  assumes given_TP: "length_TP = 4"
  assumes intersecting_chords_theorem:
    "length_PQ * length_PS = length_RP * length_TP"
begin
definition x :: real where
  "x = length_PS"
theorem value_of_x_is_10:
  "x = 10"
  oops
end
end