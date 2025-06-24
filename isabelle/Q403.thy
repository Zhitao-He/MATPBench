theory GeometryProblem
imports
  "HOL-Analysis.Analysis" 
  "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real^2"
definition s :: real where "s = 4"
definition A :: point where "A = vec_of_list [0, s]"
definition B :: point where "B = vec_of_list [s, s]"
definition C :: point where "C = vec_of_list [s, 0]"
definition D :: point where "D = vec_of_list [0, 0]"
definition E :: point where
  "E = vec_of_list [s/2, s - s * sqrt 3 / 2]"
definition P :: point where
  "P = vec_of_list [s * (3 - sqrt 3) / 2, s * (sqrt 3 - 1) / 2]"
definition Q :: point where
  "Q = vec_of_list [s, s * (sqrt 3 - 1) / 2]"
definition x :: real where
  "x = s * (sqrt 3 - 1) / 2"
end