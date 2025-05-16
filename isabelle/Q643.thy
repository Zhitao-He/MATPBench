theory QuadrilateralAngles
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition "angle_PSR x = x + 10"
definition "angle_QPS x = x"
definition "angle_RQP x = 2*x - 16"
definition "angle_SRQ x = 2*x"
lemma quadrilateral_angle_sum:
  assumes "angle_PSR x + angle_QPS x + angle_RQP x + angle_SRQ x = 360"
  shows "angle_SRQ x = 122"
proof -
  have "angle_PSR x + angle_QPS x + angle_RQP x + angle_SRQ x = 360" 
    using assms by simp
  hence "(x + 10) + x + (2*x - 16) + (2*x) = 360" 
    unfolding angle_PSR_def angle_QPS_def angle_RQP_def angle_SRQ_def by simp
  hence "6*x - 6 = 360" by simp
  hence "6*x = 366" by simp
  hence "x = 61" by simp
  hence "angle_SRQ x = 2*61" unfolding angle_SRQ_def by simp
  thus "angle_SRQ x = 122" by simp
qed
theorem SRQ_angle_value: "angle_SRQ 61 = 122"
  unfolding angle_SRQ_def by simp