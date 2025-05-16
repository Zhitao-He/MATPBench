theory RectangleAngleBisector
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale rectangle_problem =
  fixes J K L M :: "real × real"
  assumes rectangle: "rectangular_quad J K L M"
  and distinct: "J ≠ K" "K ≠ L" "L ≠ M" "M ≠ J"
where "rectangular_quad J K L M ≡
  (let (j1,j2) = J; (k1,k2) = K; (l1,l2) = L; (m1,m2) = M in
   (k1-j1)*(m1-j1) + (k2-j2)*(m2-j2) = 0 ∧
   (l1-k1)*(m1-l1) + (l2-k2)*(m2-l2) = 0)"
context rectangle_problem begin
definition angle_bisector :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ bool"
where "angle_bisector P Q R S ≡
  (let (p1,p2) = P; (q1,q2) = Q; (r1,r2) = R; (s1,s2) = S in
   let v1 = (q1-p1, q2-p2);
       v2 = (r1-p1, r2-p2);
       norm_v1 = sqrt((q1-p1)^2 + (q2-p2)^2);
       norm_v2 = sqrt((r1-p1)^2 + (r2-p2)^2) in
   (s1-p1, s2-p2) = (v1/norm_v1 + v2/norm_v2))"
definition distance_point_line :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real"
where "distance_point_line P A B =
  (let (p1,p2) = P; (a1,a2) = A; (b1,b2) = B in
   abs((b2-a2)*p1 - (b1-a1)*p2 + b1*a2 - b2*a1) / sqrt((b1-a1)^2 + (b2-a2)^2))"
fixes N :: "real × real"
assumes N_on_KM: "∃t. 0 < t ∧ t < 1 ∧ N = (fst K + t*(fst M - fst K), snd K + t*(snd M - snd K))"
and N_on_bisector: "∃S. S ≠ J ∧ angle_bisector J K J M S ∧ 
                        (∃u. 0 < u ∧ N = (fst J + u*(fst S - fst J), snd J + u*(fst S - fst J)))"
assumes dist_N_LM: "distance_point_line N L M = 8"
and dist_N_KL: "distance_point_line N K L = 1"
fixes a b :: real
assumes KL_length: "sqrt((fst L - fst K)^2 + (snd L - snd K)^2) = a + sqrt b"
theorem a_plus_b_value: "a + b = 16"
sorry