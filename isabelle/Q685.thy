theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale angle_problem =
  fixes B :: "real^2"    
  fixes R :: "real^2"    
  fixes T :: "real^2"    
  fixes S :: "real^2"    
  assumes distinct: "B ≠ R" "B ≠ T" "B ≠ S" "R ≠ T" "R ≠ S" "T ≠ S"
  assumes TR_tangent: "norm(R - B) = norm(B - T)" 
                      "((R - B) •ₙ (T - R)) = 0"
  assumes TS_tangent: "norm(S - B) = norm(B - T)"
                      "((S - B) •ₙ (T - S)) = 0"
  assumes angle_BRS: "angle_of_vectors (B - R) (S - R) = 103 * pi / 180"
begin
lemma tangent_perpendicular_radius:
  "((B - T) •ₙ (R - T)) = 0" 
  "((B - T) •ₙ (S - T)) = 0"
proof -
  from TR_tangent(2) have "((R - B) •ₙ (T - R)) = 0" by simp
  moreover have "(T - R) = - (R - T)" by simp
  ultimately have "((R - B) •ₙ (-(R - T))) = 0" by simp
  hence "((R - B) •ₙ (R - T)) = 0" by simp
  sorry
qed
theorem angle_RTS_77:
  "angle_of_vectors (R - T) (S - T) = 77 * pi / 180"
proof -
  sorry
qed