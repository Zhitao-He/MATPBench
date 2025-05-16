theory ParallelLines
imports Main Real 
begin
typedecl Point
consts dist :: "Point ⇒ Point ⇒ real"
definition parallel :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "parallel A B C D ≡ (∃ k::real. k > 0 ∧ 
    dist A C = k * dist B D ∧ 
    dist A D = k * dist B C)"
consts P :: Point
consts T :: Point
consts Q :: Point
consts R :: Point
consts S :: Point
axiomatization where
  PT_length: "dist P T = 6" and
  QR_length: "dist Q R = 12" and
  SP_length: "dist S P = 4" and
  PT_parallel_QR: "parallel P T Q R"
lemma similar_triangles_TSP_RSQ:
  assumes "parallel P T Q R"
  shows "dist S Q = 8"
proof -
  have ratio: "dist S Q / dist S P = dist Q R / dist P T"
    using assms parallel_def 
    sorry 
  have "dist S Q / 4 = 12 / 6" 
    using ratio PT_length QR_length SP_length
    by simp
  have "dist S Q / 4 = 2"
    by simp
  thus "dist S Q = 8"
    by simp
qed