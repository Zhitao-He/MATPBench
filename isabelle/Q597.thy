theory SquareProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = (
    (fst p2 - fst p1) * (fst p4 - fst p3) + (snd p2 - snd p1) * (snd p4 - snd p3) = 0
  )"
definition W :: point where "W = (0, 0)"
definition X :: point where "X = (0, 3)"
definition Y :: point where "Y = (3, 3)"
definition Z :: point where "Z = (3, 0)"
definition T :: point where "T = (3, 3)" 
lemma conditions:
  shows "distance W T = 3" 
  sorry
end
theorem xy_length: "distance X Y = 3 * sqrt 2"
begin
  sorry