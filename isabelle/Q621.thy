theory SRT_Triangle
  imports
    Main
    "HOL-Analysis.Analysis"
begin
(* Define points in 2D space *)
type_synonym point = "real × real"
(* Distance between two points *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
(* Dot product of two vectors *)
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v1 v2 = (fst v1 * fst v2) + (snd v1 * snd v2)"
(* Vector from p1 to p2 *)
definition vector :: "point ⇒ point ⇒ point" where
  "vector p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
(* Vector magnitude (length) *)
definition magnitude :: "point ⇒ real" where
  "magnitude v = sqrt((fst v)^2 + (snd v)^2)"
(* Cosine of angle between two vectors *)
definition cos_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "cos_angle A B C = 
    let v1 = vector B A;
        v2 = vector B C
    in dot_product v1 v2 / (magnitude v1 * magnitude v2)"
(* Define sine in terms of cosine *)
definition sin_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "sin_angle A B C = sqrt(1 - (cos_angle A B C)^2)"
(* Setup the triangle with the given constraints *)
lemma triangle_SRT:
  assumes "dist S R = 5"
    and "dist T R = 3"
    and "dist T S = 4"
    and "dot_product (vector T S) (vector T R) = 0" (* RT ⊥ ST *)
  shows "sin_angle S R T = 4/5"
proof -
  (* Apply cosine theorem to find the cosine of angle SRT *)
  have "cos_angle S R T = (dist S R^2 + dist T R^2 - dist T S^2) / (2 * dist S R * dist T R)"
    by (simp add: cos_angle_def vector_def dot_product_def magnitude_def dist_def)
  (* Substitute the known values *)
  then have "cos_angle S R T = (5^2 + 3^2 - 4^2) / (2 * 5 * 3)"
    using assms(1) assms(2) assms(3) by simp
  (* Simplify *)
  then have "cos_angle S R T = (25 + 9 - 16) / 30"
    by simp
  then have "cos_angle S R T = 18 / 30"
    by simp
  then have "cos_angle S R T = 3/5"
    by simp
  (* Use Pythagorean identity sin^2 + cos^2 = 1 *)
  then have "sin_angle S R T = sqrt(1 - (3/5)^2)"
    by (simp add: sin_angle_def)
  then have "sin_angle S R T = sqrt(1 - 9/25)"
    by simp
  then have "sin_angle S R T = sqrt(16/25)"
    by simp
  then have "sin_angle S R T = 4/5"
    by simp
  thus ?thesis by simp
qed