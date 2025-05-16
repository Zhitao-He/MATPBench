theory CircleAngleProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale circle_angle_problem =
  fixes V :: "real^2"  
  fixes Q U T S A :: "real^2"  
  fixes x :: real      
  assumes distinct: "Q ≠ U" "U ≠ T" "T ≠ S" "S ≠ A" "A ≠ Q"
                    "V ≠ Q" "V ≠ U" "V ≠ T" "V ≠ S" "V ≠ A"
  assumes on_circle: "∀P ∈ {Q, U, T, S, A}. dist P V = dist Q V"
  assumes angle_QVA: "angle Q V A = 167"
  assumes angle_AVS: "angle A V S = x"
  assumes angle_SVT: "angle S V T = 77"
  assumes angle_TVU: "angle T V U = x"
  assumes angle_UVQ: "angle U V Q = 26"
  assumes angles_sum: "angle Q V A + angle A V S + angle S V T + angle T V U + angle U V Q = 360"
theorem circle_center_angle_value: "x = 45"
proof -
  have "angle Q V A + angle A V S + angle S V T + angle T V U + angle U V Q = 360"
    by (rule angles_sum)
  also have "angle Q V A = 167" by (rule angle_QVA)
  also have "angle A V S = x" by (rule angle_AVS)
  also have "angle S V T = 77" by (rule angle_SVT)
  also have "angle T V U = x" by (rule angle_TVU)
  also have "angle U V Q = 26" by (rule angle_UVQ)
  finally have "167 + x + 77 + x + 26 = 360" by simp
  hence "2*x + 270 = 360" by simp
  hence "2*x = 90" by simp
  thus "x = 45" by simp
qed