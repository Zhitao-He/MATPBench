theory BisectorTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (45, 0)" 
definition C :: "real × real" where "C = (0, 21)"
definition angle :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "angle P Q R = (
    let v1 = (fst P - fst Q, snd P - snd Q);
        v2 = (fst R - fst Q, snd R - snd Q) in
    arccos((fst v1 * fst v2 + snd v1 * snd v2) / 
          (sqrt((fst v1)^2 + (snd v1)^2) * sqrt((fst v2)^2 + (snd v2)^2)))
  )"
definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance P Q = sqrt((fst P - fst Q)^2 + (snd P - snd Q)^2)"
definition X :: "real × real" where
  "X = (14, 0)" 
theorem bisector_theorem:
  assumes "angle A C X = angle X C B" 
  shows "distance A X = 14"
proof -
  have "distance A X = distance (0, 0) (14, 0)"
    by (simp add: A_def X_def distance_def)
  also have "... = sqrt((0 - 14)^2 + (0 - 0)^2)"
    by simp
  also have "... = sqrt(196)"
    by simp
  also have "... = 14"
    by simp
  finally show ?thesis .
qed