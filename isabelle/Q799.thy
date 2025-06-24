theory Geometric_Problem_Cosine
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
consts M :: point
consts N :: point
consts P :: point
axiomatization where
  dist_NM: "dist N M = 39" and
  dist_PM: "dist P M = 36" and
  dist_PN: "dist P N = 15" and
  angle_MPN_is_right: "angle M P N = pi / 2"
lemma cos_NMP_value:
  "cos (angle N M P) = 12/13"
  oops
end