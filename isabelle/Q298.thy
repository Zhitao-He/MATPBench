theory PaperFoldingProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
definition A :: "real × real" where "A = (0, 8)"
definition B :: "real × real" where "B = (5, 8)"
definition C :: "real × real" where "C = (5, 0)"
definition D :: "real × real" where "D = (0, 0)"
definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition P :: "real × real" where
  "P = (5, 6)"
definition Q :: "real × real" where
  "Q = (3, 0)"
definition R :: "real × real" where
  "R = (8/3, 0)"
definition triangle_area :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "triangle_area p q r = abs(
    fst p * (snd q - snd r) + 
    fst q * (snd r - snd p) + 
    fst r * (snd p - snd q)
  ) / 2"
definition DRQC_area :: "real" where
  "DRQC_area = triangle_area D R Q + triangle_area Q R C"
lemma DRQC_area_value: "DRQC_area = 11.5"
  unfolding DRQC_area_def triangle_area_def R_def Q_def C_def D_def
  by (simp add: algebra_simps)