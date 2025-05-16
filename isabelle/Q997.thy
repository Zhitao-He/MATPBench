theory Excircle_Bisector_Theorem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹In triangle ABC, the excircle ⊙P is tangent to the extensions of CB at D and CA at E,
while the excircle ⊙Q is tangent to the extensions of BC at F and BA at G.
Lines DE and FG intersect PQ at M and N respectively.
Lines BN and CM meet at point L.
Prove that AL bisects angle BAC.›
locale triangle =
  fixes A B C :: "real^2"
  assumes noncollinear: "¬ collinear {A, B, C}"
locale excircle_bisector_setup = triangle +
  fixes P Q D E F G M N L :: "real^2"
  (* Excircle centers *)
  assumes P_excircle: "is_excircle_center P A B C"  
  and Q_excircle: "is_excircle_center Q C A B"
  (* Tangent points for excircle P *)
  and D_tangent: "on_line D (line C B) ∧ is_tangent_point D P (line C B)"
  and E_tangent: "on_line E (line C A) ∧ is_tangent_point E P (line C A)"
  (* Tangent points for excircle Q *)
  and F_tangent: "on_line F (line B C) ∧ is_tangent_point F Q (line B C)"
  and G_tangent: "on_line G (line B A) ∧ is_tangent_point G Q (line B A)"
  (* Intersection points *)
  and M_intersection: "on_line M (line D E) ∧ on_line M (line P Q)"
  and N_intersection: "on_line N (line F G) ∧ on_line N (line P Q)"
  and L_intersection: "on_line L (line B N) ∧ on_line L (line C M)"
(* Definitions for geometric concepts used above *)
definition collinear :: "(real^2) set ⇒ bool" where
  "collinear S ≡ ∃ l. ∀ p ∈ S. on_line p l"
definition on_line :: "real^2 ⇒ (real^2 × real^2) ⇒ bool" where
  "on_line P l ≡ let (A, B) = l in ∃t. P = A + t *⇩R (B - A)"
definition line :: "real^2 ⇒ real^2 ⇒ (real^2 × real^2)" where
  "line A B = (A, B)"
definition is_excircle_center :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "is_excircle_center P A B C ≡ 
    ∃r > 0. (∀X∈{A, B, C}. ∃Y. dist P Y = r ∧ on_line Y (line P X)) ∧
    (∀X Y∈{A, B, C}. X ≠ Y ⟶ (∃Z. dist P Z = r ∧ on_line Z (line X Y)))"
definition is_tangent_point :: "real^2 ⇒ real^2 ⇒ (real^2 × real^2) ⇒ bool" where
  "is_tangent_point T C l ≡ on_line T l ∧ (let r = dist C T in 
    ∀P. on_line P l ∧ P ≠ T ⟶ dist C P > r)"
definition bisects_angle :: "(real^2 × real^2) ⇒ (real^2 × real^2 × real^2) ⇒ bool" where
  "bisects_angle l a ≡ let (P, Q, R) = a in
    let angle1 = vector_angle (P - Q) (l - Q) in
    let angle2 = vector_angle (l - Q) (R - Q) in
    abs (angle1 - angle2) < 0.0001"
definition vector_angle :: "real^2 ⇒ real^2 ⇒ real" where
  "vector_angle v1 v2 = arccos (inner v1 v2 / (norm v1 * norm v2))"
definition angle_at :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ (real^2 × real^2 × real^2)" where
  "angle_at A B C = (A, B, C)"
theorem excircle_bisector_theorem:
  assumes "triangle A B C" 
  and "excircle_bisector_setup A B C P Q D E F G M N L"
  shows "bisects_angle (line A L) (angle_at B A C)"
  sorry